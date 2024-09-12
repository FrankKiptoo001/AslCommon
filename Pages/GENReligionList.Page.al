page 69266 "GEN-Religion List"
{
    PageType = List;
    SourceTable = 61471;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Relegion; Rec.Relegion)
                {
                    ApplicationArea = All;
                }
                field(Remarks; Rec.Remarks)
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

