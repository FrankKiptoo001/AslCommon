page 63207 "Audit Risk Caues Lines"
{
    PageType = List;
    SourceTable = 62303;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(No; Rec.No)
                {
                    HideValue = true;
                    Visible = false;
                    ApplicationArea = All;
                }
                field("Risk Code"; Rec."Risk Code")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Title; Rec.Title)
                {
                    Visible = false;
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
    }
}

