codeunit 50140 "Sales Discount Helper"
{
    /// <summary>
    /// Calculates the discount amount for a sales header based on the total amount.
    /// </summary>
    /// <param name="SalesHeader">The Sales Header record to calculate discount for.</param>
    /// <returns>The calculated discount amount in decimal.</returns>
    procedure CalculateDiscountAmount(SalesHeader: Record "Sales Header"): Decimal
    var
        TotalAmount: Decimal;
        DiscountAmount: Decimal;
        DiscountPercentage: Decimal;
    begin
        // Get the total amount from the sales header
        TotalAmount := SalesHeader.Amount;

        // Apply the appropriate discount based on the total amount
        if TotalAmount > 1000 then
            DiscountPercentage := 0.15  // 15% discount for amounts over £1000
        else if TotalAmount > 500 then
            DiscountPercentage := 0.10  // 10% discount for amounts over £500
        else
            DiscountPercentage := 0;    // No discount for amounts £500 or less

        // Calculate the discount amount
        DiscountAmount := TotalAmount * DiscountPercentage;

        exit(DiscountAmount);
    end;
}
