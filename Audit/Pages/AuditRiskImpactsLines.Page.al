page 63208 "Audit Risk Impacts Lines"
{
    PageType = List;
    SourceTable = 62305;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No"; Rec."Entry No")
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

