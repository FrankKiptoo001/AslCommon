page 50744 "CEO-Calendar Deytails"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CEO-Calendar Entries";
    CardPageId = "Calendar Entries Card";

    layout
    {
        area(Content)
        {
            repeater("Calendar List")
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;

                }
                field("Calendar Name"; Rec."Calendar Name")
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
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
    }

    var
        myInt: Integer;
}