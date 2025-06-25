page 50143 "Test Runner"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Test Runner';

    layout
    {
        area(Content)
        {
            group(Options)
            {
                Caption = 'Options';
                field(TestCodeunit; TestCodeunitID)
                {
                    Caption = 'Test Codeunit ID';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ID of the test codeunit to run';
                }
                field(TestMethod; TestMethodName)
                {
                    Caption = 'Test Method Name (Optional)';
                    ApplicationArea = All;
                    ToolTip = 'Specifies a specific test method to run. Leave empty to run all tests in the codeunit';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(RunTests)
            {
                ApplicationArea = All;
                Caption = 'Run Test(s)';
                ToolTip = 'Runs the specified tests';
                Image = Start;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    RunSelectedTests();
                end;
            }
        }
    }

    var
        TestCodeunitID: Integer;
        TestMethodName: Text;

    local procedure RunSelectedTests()
    begin
        if TestCodeunitID = 0 then
            Error('Please specify a test codeunit ID');

        CODEUNIT.RUN(TestCodeunitID);
        Message('Tests completed successfully.');
    end;
}
