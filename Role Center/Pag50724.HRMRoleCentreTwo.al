page 50724 "HRM-Role Centre Two"
{
    Caption = 'HRM-Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            part(ApprovalsActivities; "Approvals Activities")
            {
                ApplicationArea = Suite;
            }

            part("Approvals1"; "Approvals Activities Initial")
            {
                ApplicationArea = Suite;
            }
            part("Approvals2"; "Approvals Activities One")
            {
                ApplicationArea = Suite;
            }
            part("Approvals3"; "Approvals Activities Two")
            {
                ApplicationArea = Suite;


            }
            part("Approvals4"; "Approvals Activities Three")
            {
                ApplicationArea = Suite;

            }
            part("Approvals5"; "Approvals Activities Four")
            {
                ApplicationArea = Suite;

            }
            part("Approvals6"; "Approvals Activities Five")
            {
                ApplicationArea = Suite;

            }
            part("Approvals7"; "Approvals Activities six")
            {
                ApplicationArea = Suite;
            }
            part("Approvals8"; "Approvals Activities seven")
            {
                ApplicationArea = Suite;
            }
            part("Approvals9"; "Approvals Activities Eight")
            {
                ApplicationArea = Suite;
            }
            part("Approvals10"; "Approvals Activities Nine")
            {
                ApplicationArea = Suite;
            }
            part("Approvals11"; "Approvals Activities Ten")
            {
                ApplicationArea = Suite;
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action(HRMJobs)
            {
                ApplicationArea = all;
                Caption = 'Jobs List';
                Image = Job;
                RunObject = Page "HRM-Jobs List";
            }

            action(HRMemployee)
            {
                ApplicationArea = all;
                Caption = 'Employee List';
                RunObject = Page "HRM-Employee List";
            }
            action(HRMEmployees)
            {
                ApplicationArea = all;
                Caption = 'Inactive Employee List';
                Image = Job;

                RunObject = Page "HRM-Employee-List (Inactive)";

            }
            action(LeaveJournal)
            {
                ApplicationArea = all;
                Caption = 'Leave Journals';
                Image = Journals;

                ToolTip = 'Allocate and Post leave days for Employees';
                RunObject = Page "HRM-Emp. Leave Journal Lines";

            }
            action(HRMLeaves)
            {
                ApplicationArea = all;
                Caption = 'Leave Applications';
                RunObject = Page "HRM-Leave Requisition List";
            }
            action(HRMLeavesApplies)
            {
                ApplicationArea = all;
                Caption = 'View Leave Applications';
                RunObject = Page "HRM-View Leave List";
            }
            action(HRMPostedLeaves)
            {
                ApplicationArea = all;
                Caption = 'Posted Leave';
                RunObject = Page "HRM-Leave Requisition Posted";
            }
        }

        area(Reporting)
        {
            group(HRMReport)
            {
                Caption = 'Employee Reports';
                ToolTip = 'Get Reports Related to Employee Manager';
                action(EmployeeList)
                {
                    ApplicationArea = all;
                    Caption = 'Employee List';
                    Image = Employee;

                    RunObject = Report "HR Employee List";
                }
                action(mployeeBeneficiaries)
                {
                    ApplicationArea = all;
                    Caption = 'Employee Beneficiaries';
                    Image = "Report";

                    RunObject = Report "HR Employee Beneficiaries";
                }
                action(EmployeeCVSunmmary)
                {
                    ApplicationArea = all;
                    Caption = 'Employee CV Sunmmary';
                    Image = SuggestGrid;

                    RunObject = Report "Employee Details Summary";
                }

                action(Employee_List)
                {
                    ApplicationArea = all;
                    Caption = 'Employee List';
                    Image = "Report";

                    RunObject = Report "HR Employee List";
                }
                action("Employee Beneficiaries")
                {
                    ApplicationArea = all;
                    Caption = 'Employee Beneficiaries';
                    Image = "Report";

                    RunObject = Report "HR Employee Beneficiaries";
                }
                action(Employee_CVSunmmary)
                {
                    ApplicationArea = all;
                    Caption = 'Employee CV Sunmmary';
                    Image = SuggestGrid;

                    RunObject = Report "Employee Details Summary";
                }
            }
            group(LeavReports)
            {
                Caption = 'Employee Leave Report';
                action(LeaveBalances)
                {
                    Caption = 'Employee Leave Balances';
                    ApplicationArea = all;
                    Image = Balance;

                    RunObject = Report "Employee Leaves";
                }
                action(LeaveTransactions)
                {
                    Caption = 'Employee Leave Tansaction';
                    ApplicationArea = all;
                    Image = Translation;

                    RunObject = Report "Standard Leave Balance Report";
                }
                action(LeaveStatement)
                {
                    Caption = 'Employee Leave Statement';
                    ApplicationArea = all;
                    Image = LedgerEntries;

                    RunObject = Report "HR Leave Statement";
                }

            }


        }
        area(Embedding)
        {
            action(employeelsting)
            {
                ApplicationArea = all;
                Caption = 'Employee List';
                RunObject = Page "HRM-Employee List";
            }
            action(leaveapplication)
            {
                ApplicationArea = all;
                Caption = 'Leave Applications';
                RunObject = Page "HRM-Leave Requisition List";
            }
        }
        area(sections)
        {
            group(EmployeeMan)
            {
                Caption = 'Employee Manager';
                Image = HumanResources;
                action(Action22)
                {
                    ApplicationArea = all;
                    Caption = 'Employee List';
                    RunObject = Page "HRM-Employee List";
                }
                action(Casuals)
                {
                    ApplicationArea = all;
                    Caption = 'Casuals';
                    RunObject = Page "HRM-Casuals Lists";
                }
                action("Leave Applications")
                {
                    ApplicationArea = all;
                    Caption = 'Leave Applications';
                    RunObject = Page "HRM-Leave Requisition List";

                }
                action("View Leave Applications")
                {
                    ApplicationArea = all;
                    Caption = 'View Leave Applications';
                    RunObject = Page "HRM-View Leave List";
                }
            }

            group(LeaveMan)
            {
                Caption = 'Leave Management';
                Image = Capacities;
                action(LeaveTypes)
                {
                    ApplicationArea = all;
                    Caption = 'Leave Types';
                    Image = Register;
                    RunObject = Page "HRM-Leave Types";
                }
                action(Action14)
                {
                    ApplicationArea = all;
                    Caption = 'Leave Applications';
                    Image = Register;
                    RunObject = Page "HRM-Leave Requisition ALL";
                }
                action("Posted Leaves")
                {
                    ApplicationArea = all;
                    Caption = 'Posted Leaves';
                    RunObject = Page "HRM-Leave Requisition Posted";
                }
                action("Staff Back To Office")
                {
                    ApplicationArea = all;
                    RunObject = Page "HRM-Return to Office";
                    ToolTip = 'Is filled by staff when they return from leave';
                }
                action("Leave Journals")
                {
                    ApplicationArea = all;
                    Caption = 'Leave Journals';
                    Image = Journals;

                    RunObject = Page "HRM-Emp. Leave Journal Lines";
                }
                action("Posted Leave")
                {
                    ApplicationArea = all;
                    Caption = 'Posted Leave Journals';
                    RunObject = Page "HRM-Posted Leave Journal";
                }

            }

            group(JobMan)
            {
                Caption = 'Jobs Management';
                Image = ResourcePlanning;
                action("Jobs List")
                {
                    ApplicationArea = all;
                    Caption = 'Jobs List';
                    Image = Job;
                    RunObject = Page "HRM-Jobs List";
                }
            }
            group(setups)
            {
                Caption = 'Setups';
                Image = HRSetup;
                action("Institutions List")
                {
                    Visible = false;
                    ApplicationArea = all;
                    Caption = 'Institutions List';
                    Image = Line;

                    RunObject = Page "HRM-Institutions List";
                }
                action("Base Calendar")
                {
                    Visible = false;
                    ApplicationArea = all;
                    Caption = 'Base Calendar';
                    RunObject = Page "Base Calendar List";
                }
                action("Hr Setups")
                {

                    ApplicationArea = all;
                    Caption = 'Hr Setups';
                    RunObject = Page "HRM-SetUp List";
                }
                action("Hr Number Series")
                {
                    Visible = false;
                    ApplicationArea = all;
                    Caption = 'Hr Number Series';
                    RunObject = Page "Human Resource Setup";
                }
                action(Committees)
                {
                    Visible = false;
                    ApplicationArea = all;
                    Caption = 'Committees';
                    RunObject = Page "HRM-Committees";
                }
                action("Look Up Values")
                {
                    Visible = false;
                    ApplicationArea = all;
                    Caption = 'Look Up Values';
                    RunObject = Page "HRM-Lookup Values List";
                }
                action("Hr Calendar")
                {
                    Visible = false;
                    ApplicationArea = all;
                    Caption = 'Hr Calendar';
                    RunObject = Page "Base Calendar List";
                }
                action(" Email Parameters List")
                {
                    Visible = false;
                    ApplicationArea = all;
                    Caption = ' Email Parameters List';
                    RunObject = Page "HRM-Email Parameters List";
                }
                action("No.Series")
                {
                    Visible = false;
                    ApplicationArea = all;
                    Caption = 'No.Series';
                    RunObject = Page "No. Series";
                }
                action("Salary Steps")
                {
                    ApplicationArea = all;
                    Caption = 'Salary Steps';
                    RunObject = Page "HRM-Job_Salary Grade/Steps";
                }
            }
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

