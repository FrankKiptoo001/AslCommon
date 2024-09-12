page 50732 "Stores Req Role Centre"
{
    Caption = 'HRM-Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(Control29)
            {
                ShowCaption = false;
                /*tdodo part("Employees Cue";"HRM-Employee Cue")
                 {
                     Caption = 'Employees Cue';
                 }
                 todo*/
                systempart(Control27; Outlook)
                {
                    ApplicationArea = All;
                }
            }
            group(Control26)
            {
                ShowCaption = false;

                systempart(Control24; Links)
                {
                    ApplicationArea = All;
                }
                systempart(Control23; MyNotes)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {



        area(sections)
        {

            group(Approvals)
            {
                Caption = 'Approvals';
                Image = Alerts;

                action("Pending Approval")
                {
                    ApplicationArea = all;
                    Caption = 'Requests to Approval';
                    RunObject = Page 654;
                }
                action("Pending My Approval")
                {
                    ApplicationArea = all;
                    Caption = 'Pending My Approval';
                    RunObject = Page "Approval Entries";
                }
                action("My Approval requests")
                {
                    ApplicationArea = all;
                    Caption = 'My Approval requests';
                    RunObject = Page "Approval Request Entries";
                }

            }
            group(Common_req)
            {

                Caption = 'Common Requisitions';
                Image = LotInfo;

                action("Imprest Requisitions")
                {
                    Caption = 'Imprest Requisitions';
                    RunObject = Page "FIN-Imprest List UP";
                    ApplicationArea = All;
                }
                action("Stores Requisitions")
                {
                    ApplicationArea = all;
                    Caption = 'Stores Requisitions';
                    RunObject = Page "PROC-Store Requisition";
                }

                action("Departmental Plan")
                {
                    ApplicationArea = Suite;
                    Caption = 'Procurement Plan';
                    RunObject = Page "PROC-Procurement Plan List";
                    ToolTip = 'Create purchase requisition from departments.';
                }
                action("Leave Applications")
                {
                    Caption = 'Leave Applications';
                    RunObject = Page "HRM-Leave Requisition List";
                    ApplicationArea = All;
                }
                action("My Approved Leaves")
                {
                    ApplicationArea = all;
                    Caption = 'My Approved Leaves';
                    Image = History;
                    RunObject = Page "HRM-My Approved Leaves List";
                }
            }
        }


    }
}

