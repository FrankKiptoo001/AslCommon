page 68151 "PROC-Store Requisition Line UP"
{
    PageType = ListPart;
    SourceTable = "PROC-Store Requistion Lines";

    layout
    {
        area(content)
        {
            repeater(rep)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("Issuing Store"; Rec."Issuing Store")
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field("Quantity Requested"; Rec."Quantity Requested")
                {
                    ApplicationArea = All;
                }
                field("Quantity To Issue"; Rec."Quantity To Issue")
                {
                    ApplicationArea = All;
                }
                field("Quantity Issued"; Rec."Quantity Issued")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                field("Qty in store"; Rec."Qty in store")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ApplicationArea = All;
                }
                field("Line Amount"; Rec."Line Amount")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Issue UserID"; Rec."Issue UserID")
                {
                    ApplicationArea = All;
                }
                field(Committed; Rec.Committed)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnClosePage()
    begin
        IF QtyStore.GET(Rec."No.") THEN
            QtyStore.CALCFIELDS(QtyStore.Inventory);
        Rec."Qty in store" := QtyStore.Inventory;
    end;

    trigger OnOpenPage()
    begin
        //"Qty in store":=Item.Inventory;
        IF QtyStore.GET(Rec."No.") THEN
            QtyStore.CALCFIELDS(QtyStore.Inventory);
        Rec."Qty in store" := QtyStore.Inventory;
    end;

    var
        QtyStore: Record 27;
}

