page 69042 "HRM-Role Centre"
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


            /*  action(CommissionReport)
             {
                 ApplicationArea = all;
                 Caption = 'Commission Report';
                 Image = Report2;
                
                 PromotedIsBig = true;
                 RunObject = Report "HRM-Commission For Univ. Rep.";
             }*/

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
            /*  group(Payroll)
             {
                 Visible = false;
                 Caption = 'Payroll';
                 Image = SNInfo;
                 action("Salary Card")
                 {

                     Caption = 'Salary Card';
                     Image = Employee;
                    
                     RunObject = Page "HRM-Employee-List";
                 }
                 action("Transcation Codes")
                 {

                     Caption = 'Transcation Codes';
                     Image = Setup;
                    
                     RunObject = Page "PRL-Transaction Codes List";
                 }
                 action("NHIF Setup")
                 {

                     Caption = 'NHIF Setup';
                     Image = SetupLines;
                    
                     RunObject = Page "PRL-NHIF SetUp";
                 }
                 action("Payroll Mass Changes")
                 {

                     Caption = 'Payroll Mass Changes';
                     Image = AddAction;
                    
                     RunObject = Page "HRM-Import Emp. Trans Buff";
                 }
                 action(" payment Vouchers")
                 {

                     Caption = ' payment Vouchers';
                     RunObject = Page "FIN-Payment Vouchers";
                 }
             } */
            /* group("Salary Increaments")
            {
                Caption = 'Salary Increaments';
                Image = Intrastat;
                Visible = false;
                action("Salary Increament Process")
                {

                    Caption = 'Salary Increament Process';
                    Image = AddAction;
                   
                    RunObject = Page "HRM-Emp. Categories";
                }
                action("Salary Increament Register")
                {

                    Caption = 'Salary Increament Register';
                    Image = Register;
                   
                    RunObject = Page "HRM-Salary Increament Register";
                }
                action("Un-Afected Salary Increaments")
                {

                    Caption = 'Un-Afected Salary Increaments';
                    Image = UndoCategory;
                   
                    RunObject = Page "HRM-Unaffected Sal. Increament";
                }
                action("Leave Allowance Buffer")
                {

                    Caption = 'Leave Allowance Buffer';
                    Image = Bins;
                   
                    RunObject = Page "HRM-Leave Allowance Buffer";
                }
            }*/
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

                    RunObject = Page "HRM-Leave Requisition List";
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
                /* action("Leave Carry Forward")
                {
                    ApplicationArea = All;
                    Caption = 'Leave Carry Forward';
                    ToolTip = 'Carry forward a maximum of 15 days';
                    //RunObject = page "";

                } */
            }

            group(JobMan)
            {
                Caption = 'Jobs Management';
                Image = ResourcePlanning;
                Visible = false;
                action("Jobs List")
                {
                    ApplicationArea = all;
                    Caption = 'Jobs List';
                    Image = Job;

                    RunObject = Page "HRM-Jobs List";
                }
            }
            group(Recruit)
            {
                Caption = 'Recruitment Management';
                action("JobsList")
                {
                    ApplicationArea = all;
                    Caption = 'Staff Establishment Plan';
                    Image = Job;

                    RunObject = Page "HRM-Jobs List";
                }

                action("Recruitment Plan")
                {
                    Caption = 'Recruitment Plan';
                    ApplicationArea = All;

                    RunObject = Page "Recruitment Plan List";
                }
                action("Recruitment Requisition")
                {
                    Caption = 'Recruitment Requisition';
                    ApplicationArea = All;

                    RunObject = Page "Recruitment Requisition List";
                }
                action("Approved Recruisitions")
                {
                    Caption = 'Approved Recruisitions';
                    ApplicationArea = All;

                    RunObject = Page "Recruitment Req Approved";
                }

                action("Employee Requisitions")
                {
                    ApplicationArea = all;
                    Caption = 'Employee Requisitions';
                    Image = ApplicationWorksheet;
                    Visible = false;

                    RunObject = Page "HRM-Employee Requisitions List";
                }
                action("Job Applications List")
                {
                    ApplicationArea = all;
                    Caption = 'Long List';
                    RunObject = Page "HRM-Job Applications List";
                }
                action("Short Listing")
                {
                    ApplicationArea = all;
                    Caption = 'Short Listing';
                    RunObject = Page "HRM-Shortlisting List";
                }
                action("Qualified Job Applicants")
                {
                    ApplicationArea = all;
                    Caption = 'Shortlisted Candidates';
                    RunObject = Page "HRM-Job Applicants Qualified";
                }
                action("Unqualified Applicants")
                {
                    ApplicationArea = all;
                    Caption = 'Unsuccessful Applicants';
                    RunObject = Page "HRM-Job Applicants Unqualified";
                }
                action("Advertised Jobs")
                {
                    ApplicationArea = all;
                    Caption = 'Advertised Jobs';
                    RunObject = Page "HRM-Advertised Job List";
                }
            }
            group(DisplinaryProcess)
            {
                Caption = 'Displinary Cases';
                action(DisplinaryCases)
                {
                    Caption = 'Displinary Cases List';
                    ApplicationArea = All;

                    RunObject = Page "HRM-Disciplinary Cases New";

                }

                action(PendingApproval)
                {
                    Caption = 'Cases Awaiting Approval';
                    ApplicationArea = All;

                    RunObject = Page "HRM-Disciplinary Cases Pending";

                }

                action(UnderInvestigation)
                {
                    Caption = 'Cases Under Investigation';
                    ApplicationArea = All;

                    RunObject = Page "HRM-Disciplinary Approved";

                }


            }

            group(train)
            {
                Caption = 'Training Management';
                action("Training Needs")
                {
                    ApplicationArea = all;
                    Caption = 'Training Needs';
                    //RunObject = Page "HRM-Train Need Analysis List";
                    RunObject = Page "HRM-Course List";
                }
                action("Training Plan")
                {
                    ApplicationArea = all;
                    Caption = 'Training Projections';
                    RunObject = page "Annual Training Plan List";
                }
                action("Training Application")
                {
                    ApplicationArea = All;
                    Caption = 'Staff Training Projections';
                    ToolTip = 'Three years projection';
                    RunObject = page "Training and Development List2";
                }

                action("Training Applications")
                {
                    ApplicationArea = all;
                    Caption = 'Training Applications';
                    RunObject = Page "HRM-Training Application List";
                }

                action("Training Providers")
                {
                    ApplicationArea = all;
                    Caption = 'Training Providers';
                    RunObject = Page "HRM-Training Providers List";
                }
                action("Back To Office")
                {
                    ApplicationArea = all;
                    Caption = 'Back To Office';
                    RunObject = Page "HRM-Back To Office List";
                }
            }

            group(setups)
            {
                Caption = 'Setups';
                Image = HRSetup;
                action("Institutions List")
                {
                    ApplicationArea = all;
                    Caption = 'Institutions List';
                    Image = Line;

                    RunObject = Page "HRM-Institutions List";
                }
                action("Base Calendar")
                {
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
                    ApplicationArea = all;
                    Caption = 'Hr Number Series';
                    RunObject = Page "Human Resource Setup";
                }
                action(Committees)
                {
                    ApplicationArea = all;
                    Caption = 'Committees';
                    RunObject = Page "HRM-Committees";
                }
                action("Look Up Values")
                {
                    ApplicationArea = all;
                    Caption = 'Look Up Values';
                    RunObject = Page "HRM-Lookup Values List";
                }
                action("Hr Calendar")
                {
                    ApplicationArea = all;
                    Caption = 'Hr Calendar';
                    RunObject = Page "Base Calendar List";
                }
                action(" Email Parameters List")
                {
                    ApplicationArea = all;
                    Caption = ' Email Parameters List';
                    RunObject = Page "HRM-Email Parameters List";
                }
                action("No.Series")
                {
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

            group("Common Requisitions")
            {
                action(ImprestRequisition)
                {
                    Caption = 'Imprest Requisition';
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "FIN-Imprests List";
                }
                action("Staff Claims")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "FIN-Staff Claim List";
                }

                action("Purchase Requisition")
                {
                    ApplicationArea = All;
                    RunObject = page "FIN-Purchase Requisition";
                }
                action("Stores Requisition")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "PROC-Store Requisition";
                }
                action("Memo Application")
                {
                    ApplicationArea = All;
                    Image = ManualExchangeRate;
                    RunObject = page "FIN-Memo Header List";
                }

            }

        }
    }
}

