query 60200 PurchaseQuoteLines
{
    Caption = 'PurchaseQuoteLines';
    QueryType = Normal;

    elements
    {
        dataitem("PROCPurchaseQuoteHeader"; "PROC-Purchase Quote Header")
        {
            column(RFQno; "No.")
            {
            }
            dataitem(PROCPurchaseQuoteLine; "PROC-Purchase Quote Line")
            {
                DataItemLink = "Document No." = PROCPurchaseQuoteHeader."No.";
                column(No; "No.")
                {
                }
                column(Description; Description)
                {
                }
                column(UnitofMeasure; "Unit of Measure")
                {
                }
                column(Quantity; Quantity)
                {
                }
                column(LineAmount; "Line Amount")
                {
                }
            }
        }

    }

    trigger OnBeforeOpen()
    begin

    end;
}
