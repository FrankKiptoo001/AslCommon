page 50749 "Legal-Contract List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Legal-Contracts";
    CardPageId = "Legal-Contract Card";
    SourceTableView = WHERE(Status = filter(Active | "Up for renewal" | "Notice Served"));

    layout
    {
        area(Content)
        {
            repeater("List")
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;

                }
                field("Contract Number"; Rec."Contract Number")
                {
                    ApplicationArea = All;

                }
                field("Budgeted Amount"; Rec."Budgeted Amount")
                {
                    ApplicationArea = All;

                }
                field("Tender No."; Rec."Tender No.")
                {
                    ApplicationArea = All;

                }

                field(Department; Rec.Department)
                {
                    ApplicationArea = All;

                }
                field("Purchase Req. Number"; Rec."Purchase Req. Number")
                {
                    ApplicationArea = All;

                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;

                }
                field(Stage; Rec.Stage)
                {
                    ApplicationArea = All;

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
        area(Reporting)
        {
            action("Contracts List Report")
            {
                Image = ContractPayment;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.RESET;
                    Rec.SETFILTER("Code", Rec."Code");
                    IF Rec.FINDFIRST THEN
                        REPORT.RUN(50722, TRUE, FALSE, Rec);
                end;
            }
        }
    }

    trigger OnOpenPage()
    var
    // LC: Record "Legal-Contracts";
    begin
        Rec.SETFILTER("Completion Date", '>%1', TODAY);
    end;
}