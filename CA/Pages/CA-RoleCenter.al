page 50764 "CA-RoleCenter"
{
    PageType = RoleCenter;
    Caption = 'Corporate Affairs Role Center';

    layout
    {
        area(RoleCenter)
        {
            group(Control29)
            {
                ShowCaption = false;
                systempart(Control27; Outlook)
                {
                    ApplicationArea = All;
                }
            }
            group(Control26)
            {
                part(Page; 9144)
                {
                    ApplicationArea = All;
                }
                systempart(Notes; MyNotes)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group(Complaints)
            {
                Caption = 'Complaints';
                Image = Alerts;
                action(Grievances)
                {
                    ApplicationArea = all;
                    Caption = 'Complaints List';
                    RunObject = Page "Complaints List";
                }
                action(Pending)
                {
                    ApplicationArea = all;
                    Caption = 'Pending Complaints';
                    RunObject = Page "Complaints Pending";
                }
                action(ClosedCasesEnd)
                {
                    ApplicationArea = all;
                    Caption = 'Closed Cases';
                    RunObject = Page "Complaints Closed";
                }

            }
            group("Branding")
            {
                Caption = 'Branding';
                action("Branding List")
                {
                    Caption = 'Branding Requisition';
                    Image = MovementWorksheet;
                    RunObject = Page "CA-Branding Req. List";
                    ApplicationArea = All;
                }
                action("Posted Branding List")
                {
                    Caption = 'Posted Branding Requisitions';
                    Image = MovementWorksheet;
                    RunObject = Page "CA-Branding Req. List-Posted";
                    ApplicationArea = All;
                }
            }
            group("CSR")
            {
                action("CSR List")
                {
                    Caption = 'CSR Memo';
                    Image = PlannedOrder;
                    RunObject = page "CA-CSR Req. List";
                    ApplicationArea = All;
                }
                action("Approved CSR List")
                {
                    Caption = 'Approved CSR Memo';
                    Image = PlannedOrder;
                    RunObject = page "CA-CSR Req. Approved";
                    ApplicationArea = All;
                }
            }
            group("Feedback")
            {
                action("Feedback2")
                {
                    Caption = 'Feedback List';
                    Image = Users;
                    RunObject = page "CA-Feedback List";
                    ApplicationArea = All;
                }
            }
            group("Risks Register")
            {
                Image = RegisteredDocs;
                action("Risk List")
                {
                    RunObject = Page 63202;
                    ApplicationArea = All;
                }
                action("Submitted Risks Under Audit")
                {
                    RunObject = Page 63203;
                    ApplicationArea = All;
                }
            }
            group("Audit Planner")
            {
                Image = Job;
                action("Audit-Plan-Master")
                {
                    RunObject = Page "Audit-Plan-Master";
                    ApplicationArea = All;
                }
            }
            group("Audit Assessment")
            {
                Image = AnalysisView;
                action("Audit Assessment List")
                {
                    RunObject = Page 63290;
                    ApplicationArea = All;
                }
                action("Audit Review List")
                {
                    RunObject = Page 62345;
                    ApplicationArea = All;
                }
                action("Archived Audit List")
                {
                    RunObject = Page 62346;
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        myInt: Integer;
}