page 50723 "Common Requisitions"
{
    PageType = RoleCenter;
    layout
    {
        area(rolecenter)
        {
            part(ApprovalsActivities; "Approvals Activities")
            {
                ApplicationArea = Suite;
            }
        }
    }

    actions
    {

        area(sections)
        {
            group("Common Requisitions")
            {
                action("Staff Claims")
                {
                    Image = CapableToPromise;
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "FIN-Staff Claim Pending";
                }
                action("Leave Requisitions")
                {
                    ApplicationArea = All;
                    Image = ViewJob;
                    RunObject = page "HRM-Leave Requisition List";

                }
                action("Employee Info")
                {
                    ApplicationArea = All;
                    Image = ViewJob;
                    RunObject = page "HRM-Employee Per Emp";

                }
            }

        }
    }
}

