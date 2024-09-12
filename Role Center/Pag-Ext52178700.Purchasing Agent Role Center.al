pageextension 52178700 "Purchasing Agent Role Center" extends "Purchasing Agent Role Center"
{
    actions
    {
        addbefore("Purchase &Quote")
        {
            action("Departmental Procurement Plan")
            {
                ApplicationArea = Suite;
                Caption = 'Procurement Plan';
                RunObject = Page "PROC-Procurement Plan list";
                Image = Planning;
                ToolTip = 'Create  Procurement Plan from departments.';
            }
            action("Consolidated Plan")
            {
                ApplicationArea = Suite;
                Image = Planning;
                Caption = 'Consolidated Plan';
                RunObject = Page "Consolidated Plan List";
            }
        }
        addbefore("Purchase &Quote")
        {
            action("Purchase Requisitions")
            {
                ApplicationArea = Suite;
                Caption = 'Purchase Requisitions';
                RunObject = Page "FIN-Purchase Requisition";
                ToolTip = 'Create purchase requisition from departments.';
            }
        }
        addafter("Purchase Requisitions")
        {
            action(FRQs)
            {
                Image = Purchase;
                ApplicationArea = Suite;
                Caption = 'RFQs';
                RunObject = Page "PROC-Purchase Quote List";
                ToolTip = 'Create purchase requisition from departments.';
            }
        }
        modify("Purchase &Quote")
        {
            Visible = false;
        }
        addafter("Purchase &Quote")
        {
            action(Purquote)
            {
                Image = Purchase;
                ApplicationArea = Suite;
                Caption = 'Purchase Quotes';
                RunObject = page "PROC-Purchase Quotes List";
            }
        }
        modify("Purchase &Order")
        {
            Visible = false;
        }
        addafter("Purchase &Invoice")
        {
            action("Procurement &Order")
            {
                ApplicationArea = Suite;
                Caption = 'Procurement &Order';
                Image = Document;

                RunObject = Page "Purchase Order List";
                ToolTip = 'Create a new purchase order.';
            }
            action("Service Order")
            {
                ApplicationArea = All;
                Image = DocumentsMaturity;
                RunObject = Page "Local Service Order";

            }

        }
        addbefore("Posted Documents")
        {
            group("Store Requisition")
            {
                Caption = 'Store Requisitions';
                action("Store Requests")
                {
                    ApplicationArea = All;
                    Image = Document;
                    RunObject = Page "PROC-Store Requisition";
                }

                action("Posted Store Requisitions")
                {
                    Caption = 'Posted SRNS';
                    ApplicationArea = All;
                    Image = PostedOrder;
                    RunObject = Page "PROC-Posted Store Reqs";
                }
            }

        }
    }
}
