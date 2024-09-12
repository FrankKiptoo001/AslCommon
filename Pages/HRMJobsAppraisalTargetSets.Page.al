page 61400 "HRM-Jobs Appraisal Target Sets"
{
    PageType = List;
    SourceTable = 75002;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Target Code"; Rec."Target Code")
                {
                    ApplicationArea = All;
                }
                field("Target Description"; Rec."Target Description")
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

