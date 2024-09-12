page 50751 "Legal-Cases Closed"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Legal-Cases";
    CardPageId = "Legal-Cases Card";
    SourceTableView = WHERE(Status = FILTER(Closed));

    layout
    {
        area(Content)
        {
            repeater("Lega Cases List")
            {
                field("Case Number"; Rec."Case Number")
                {
                    ApplicationArea = All;

                }
                field("Case Title"; Rec."Case Title")
                {
                    ApplicationArea = All;

                }
                field("Case Description"; Rec."Case Description")
                {
                    ApplicationArea = All;

                }
                field(Status; Rec.Status)
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
            action("Legal Cases List Report")
            {
                Image = "Report";
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.RESET;
                    Rec.SETFILTER("Case Number", Rec."Case Number");
                    IF Rec.FINDFIRST THEN
                        REPORT.RUN(50721, TRUE, FALSE, Rec);
                end;
            }
        }
    }

    var
        myInt: Integer;
}