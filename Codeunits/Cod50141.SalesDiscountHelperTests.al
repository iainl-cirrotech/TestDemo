codeunit 50141 "Sales Discount Helper Tests"
{
    Subtype = Test;

    var
        SalesDiscountHelper: Codeunit "Sales Discount Helper";

    [Test]
    procedure TestDiscountFor600Amount()
    var
        SalesHeader: Record "Sales Header";
        ExpectedDiscount: Decimal;
        ActualDiscount: Decimal;
    begin
        // [GIVEN] A sales header with amount £600
        SalesHeader.Amount := 600;

        // [WHEN] We calculate the discount amount
        ActualDiscount := SalesDiscountHelper.CalculateDiscountAmount(SalesHeader);

        // [THEN] The discount should be 10% of £600 = £60
        ExpectedDiscount := 60; // 10% of 600
        if ExpectedDiscount <> ActualDiscount then
            Error('Incorrect discount for £600 order amount. Expected: %1, Actual: %2', ExpectedDiscount, ActualDiscount);
    end;

    [Test]
    procedure TestDiscountFor1200Amount()
    var
        SalesHeader: Record "Sales Header";
        ExpectedDiscount: Decimal;
        ActualDiscount: Decimal;
    begin
        // [GIVEN] A sales header with amount £1200
        SalesHeader.Amount := 1200;

        // [WHEN] We calculate the discount amount
        ActualDiscount := SalesDiscountHelper.CalculateDiscountAmount(SalesHeader);

        // [THEN] The discount should be 15% of £1200 = £180
        ExpectedDiscount := 180; // 15% of 1200
        if ExpectedDiscount <> ActualDiscount then
            Error('Incorrect discount for £1200 order amount. Expected: %1, Actual: %2', ExpectedDiscount, ActualDiscount);
    end;
}
