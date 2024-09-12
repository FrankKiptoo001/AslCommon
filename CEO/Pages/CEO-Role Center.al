// page 50729 "CEO-Role Center"
// {
//     Caption = 'CEO Office Role Center';
//     PageType = RoleCenter;

//     layout
//     {
//         area(rolecenter)
//         {
//             part(part7; 1310)
//             {
//                 AccessByPermission = TableData 17 = R;
//                 ApplicationArea = Basic, Suite;
//             }

//             part(Part5; 9042)
//             {
//                 ApplicationArea = Suite;
//             }
//             part("Favorite Accounts"; 9153)
//             {
//                 ApplicationArea = Basic, Suite;
//                 Caption = 'Favorite Accounts';
//             }
//             part(Part2; 1393)
//             {
//                 AccessByPermission = TableData 17 = R;
//                 ApplicationArea = Basic, Suite;
//             }
//             part(Page; 9144)
//             {
//                 ApplicationArea = All;
//             }
//             part(Part3; 681)
//             {
//                 ApplicationArea = Basic, Suite;
//             }
//             part(Part4; 6303)
//             {
//                 ApplicationArea = Basic, Suite;
//             }
//         }
//     }

//     actions
//     {



//         area(reporting)
//         {
//             group(Finance_01)
//             {
//                 Caption = 'Finance';
//                 group(Finance)
//                 {
//                     Caption = 'Finance';
//                     Image = LotInfo;
//                     action("&G/L Trial Balance")
//                     {
//                         Caption = '&G/L Trial Balance';
//                         Image = "Report";
//                         ApplicationArea = All;

//                         //RunObject = Report 6;
//                     }
//                     action("&Bank Detail Trial Balance")
//                     {
//                         Caption = '&Bank Detail Trial Balance';
//                         Image = "Report";
//                         RunObject = Report 1404;
//                         ApplicationArea = All;
//                     }
//                     action("&Account Schedule")
//                     {
//                         Caption = '&Account Schedule';
//                         Image = "Report";
//                         RunObject = Report 25;
//                         ApplicationArea = All;
//                     }
//                     /* action("Bu&dget")
//                     {
//                         Caption = 'Bu&dget';
//                         Image = "Report";
//                         RunObject = Report 8;
//                     } */
//                     action("Trial Bala&nce/Budget")
//                     {
//                         Caption = 'Trial Bala&nce/Budget';
//                         Image = "Report";
//                         RunObject = Report 9;
//                         ApplicationArea = All;
//                     }
//                     action("Trial Balance by &Period")
//                     {
//                         Caption = 'Trial Balance by &Period';
//                         Image = "Report";
//                         RunObject = Report 38;
//                         ApplicationArea = All;
//                     }
//                     action("&Fiscal Year Balance")
//                     {
//                         Caption = '&Fiscal Year Balance';
//                         Image = "Report";
//                         RunObject = Report 36;
//                         ApplicationArea = All;
//                     }
//                     action("Balance Comp. - Prev. Y&ear")
//                     {
//                         Caption = 'Balance Comp. - Prev. Y&ear';
//                         Image = "Report";
//                         RunObject = Report 37;
//                         ApplicationArea = All;
//                     }
//                     /*  action("&Closing Trial Balance")
//                      {
//                          Caption = '&Closing Trial Balance';
//                          Image = "Report";
//                          RunObject = Report 10;
//                      } */
//                     separator("   ")
//                     {
//                     }
//                     action("Cash Flow Date List")
//                     {
//                         Caption = 'Cash Flow Date List';
//                         Image = "Report";
//                         RunObject = Report 846;
//                         ApplicationArea = All;
//                     }
//                     separator("    ")
//                     {
//                     }
//                     action("Aged Accounts &Receivable")
//                     {
//                         Caption = 'Aged Accounts &Receivable';
//                         Image = "Report";
//                         RunObject = Report 120;
//                         ApplicationArea = All;
//                     }
//                     action("Aged Accounts Pa&yable")
//                     {
//                         Caption = 'Aged Accounts Pa&yable';
//                         Image = "Report";
//                         RunObject = Report 322;
//                         ApplicationArea = All;
//                     }
//                     action("Reconcile Cus&t. and Vend. Accs")
//                     {
//                         Caption = 'Reconcile Cus&t. and Vend. Accs';
//                         Image = "Report";
//                         RunObject = Report 33;
//                         ApplicationArea = All;
//                     }
//                     separator("T")
//                     {
//                     }
//                     action("&VAT Registration No. Check")
//                     {
//                         Caption = '&VAT Registration No. Check';
//                         Image = "Report";
//                         RunObject = Report 32;
//                         ApplicationArea = All;
//                     }
//                     action("VAT E&xceptions")
//                     {
//                         Caption = 'VAT E&xceptions';
//                         Image = "Report";
//                         RunObject = Report 31;
//                         ApplicationArea = All;
//                     }
//                     action("VAT &Statement")
//                     {
//                         Caption = 'VAT &Statement';
//                         Image = "Report";
//                         RunObject = Report 12;
//                         ApplicationArea = All;
//                     }
//                     action("VAT - VIES Declaration Tax Aut&h")
//                     {
//                         Caption = 'VAT - VIES Declaration Tax Aut&h';
//                         Image = "Report";
//                         RunObject = Report 19;
//                         ApplicationArea = All;
//                     }
//                     action("VAT - VIES Declaration Dis&k")
//                     {
//                         Caption = 'VAT - VIES Declaration Dis&k';
//                         Image = "Report";
//                         RunObject = Report 88;
//                         ApplicationArea = All;
//                     }
//                     action("EC Sales &List")
//                     {
//                         Caption = 'EC Sales &List';
//                         Image = "Report";
//                         RunObject = Report 130;
//                         ApplicationArea = All;
//                     }
//                     separator(" ")
//                     {
//                     }
//                     action("&Intrastat - Checklist")
//                     {
//                         Caption = '&Intrastat - Checklist';
//                         Image = "Report";
//                         RunObject = Report 502;
//                         ApplicationArea = All;
//                     }
//                     action("Intrastat - For&m")
//                     {
//                         Caption = 'Intrastat - For&m';
//                         Image = "Report";
//                         RunObject = Report 501;
//                         ApplicationArea = All;
//                     }
//                     separator("  ")
//                     {
//                     }
//                     action("Cost Accounting P/L Statement")
//                     {
//                         Caption = 'Cost Accounting P/L Statement';
//                         Image = "Report";
//                         RunObject = Report 1126;
//                         ApplicationArea = All;
//                     }
//                     action("CA P/L Statement per Period")
//                     {
//                         Caption = 'CA P/L Statement per Period';
//                         Image = "Report";
//                         RunObject = Report 1123;
//                         ApplicationArea = All;
//                     }
//                     action("CA P/L Statement with Budget")
//                     {
//                         Caption = 'CA P/L Statement with Budget';
//                         Image = "Report";
//                         RunObject = Report 1133;
//                         ApplicationArea = All;
//                     }
//                     action("Cost Accounting Analysis")
//                     {
//                         Caption = 'Cost Accounting Analysis';
//                         Image = "Report";
//                         RunObject = Report 1127;
//                         ApplicationArea = All;
//                     }
//                     separator("s")
//                     {
//                     }
//                     action("Vendor - T&op 10 List")
//                     {
//                         Caption = 'Vendor - T&op 10 List';
//                         Image = "Report";
//                         ApplicationArea = All;
//                         //RunObject = Report 311;
//                     }
//                     action("Vendor/&Item Purchases")
//                     {
//                         Caption = 'Vendor/&Item Purchases';
//                         Image = "Report";
//                         ApplicationArea = All;
//                         //RunObject = Report 313;
//                     }
//                     separator("p")
//                     {
//                     }
//                 }
//             }
//             group("Procurement Reports")
//             {
//                 Caption = 'Procurement Reports';
//                 group(Procurement)
//                 {
//                     Caption = 'Procurement Reports';
//                     Image = ProductDesign;
//                     action("Inventory - &Availability Plan")
//                     {
//                         Caption = 'Inventory - &Availability Plan';
//                         Image = ItemAvailability;

//                         RunObject = Report 707;
//                         ApplicationArea = All;
//                     }
//                     action("Inventory &Purchase Orders")
//                     {
//                         Caption = 'Inventory &Purchase Orders';
//                         Image = "Report";
//                         ApplicationArea = All;

//                         //RunObject = Report 709;
//                     }
//                     action("Inventory - &Vendor Purchases")
//                     {
//                         Caption = 'Inventory - &Vendor Purchases';
//                         Image = "Report";
//                         ApplicationArea = All;

//                         //RunObject = Report 714;
//                     }
//                     action("Inventory &Cost and Price List")
//                     {
//                         Caption = 'Inventory &Cost and Price List';
//                         Image = "Report";
//                         ApplicationArea = All;

//                         //RunObject = Report 716;
//                     }
//                     /* action("Purchase Quote Request Report")
//                     {
//                         Caption = 'Purchase Quote Request Report';
//                         Image = "Report";

//                         RunObject = Report 51074;
//                     } */
//                     action("Purchase Quote Request Report")
//                     {
//                         Caption = 'Purchase Quote Request Report';
//                         Image = "Report";
//                         ApplicationArea = All;

//                         //RunObject = Report 39005490;
//                     }
//                     action("Local Purchase Orders")
//                     {
//                         Caption = 'Local Purchase Orders';
//                         Image = "Report";
//                         ApplicationArea = All;

//                         //RunObject = Report 51092;
//                     }
//                     action("Purchase Requisition")
//                     {
//                         Caption = 'Purchase Requisition';
//                         Image = "Report";
//                         ApplicationArea = All;

//                         //RunObject = Report 51242;
//                     }
//                     action("Purchase Order")
//                     {
//                         Caption = 'Purchase Order';
//                         Image = "Report";
//                         ApplicationArea = All;

//                         //RunObject = Report 51574;
//                     }
//                 }
//             }
//             group("Payroll Reports")
//             {
//                 Caption = 'Payroll Reports';
//                 group(payroll_Reports)
//                 {
//                     Caption = 'Payroll Reports';
//                     Image = Receivables;
//                     action("Company Payroll Master")
//                     {
//                         Caption = 'Company Payroll Master';
//                         Image = CompanyInformation;
//                         ApplicationArea = All;

//                         //RunObject = Report 51082;
//                     }
//                     action("view payslip")
//                     {
//                         Caption = 'vew payslip';
//                         RunObject = Report "Individual Payslips V.1.1.3";
//                         ApplicationArea = All;
//                     }
//                     action("Payroll summary1")
//                     {
//                         Caption = 'Payroll summary';
//                         RunObject = Report 51735;
//                         ApplicationArea = All;
//                     }
//                     action("payroll summary 2")
//                     {
//                         Caption = 'payroll summary2';
//                         ApplicationArea = All;
//                         //RunObject = Report 51101;
//                     }
//                     /* action(deductions)
//                     {
//                         Caption = 'deductions';
//                         RunObject = Report 51096;
//                     } */
//                     /* action("Staff pension 3")
//                     {
//                         Caption = 'Staff pension';
//                         RunObject = Report 51099;
//                     } */
//                     action("Gross Netpay2")
//                     {
//                         Caption = 'Gross Netpay';
//                         RunObject = Report 51098;
//                         ApplicationArea = All;
//                     }
//                     action("Third Rule2")
//                     {
//                         Caption = 'Third Rule';
//                         RunObject = Report 51146;
//                         ApplicationArea = All;
//                     }
//                     action("Co_op Remittance3")
//                     {
//                         Caption = 'Co_op Remittance';
//                         RunObject = Report 51107;
//                         ApplicationArea = All;
//                     }
//                     action(Transactions2)
//                     {
//                         Caption = 'Transactions';
//                         RunObject = Report 51133;
//                         ApplicationArea = All;
//                     }
//                     action("bank Schedule3")
//                     {
//                         Caption = 'bank Schedule';
//                         RunObject = Report 51144;
//                         ApplicationArea = All;
//                     }
//                     action("vew payslip")
//                     {
//                         Caption = 'vew payslip';
//                         //Image = "report";
//                         RunObject = Report 51735;
//                         ApplicationArea = All;
//                     }
//                     action("Payroll summary")
//                     {
//                         Caption = 'Payroll summary';
//                         //Image = payslip;
//                         RunObject = Report 51735;
//                         ApplicationArea = All;
//                     }
//                     /*  action("payroll summary2")
//                      {
//                          Caption = 'payroll summary2';
//                          Image = summary;
//                          RunObject = Report 51101;
//                      } */
//                     /* action(deductions)
//                     {
//                         Caption = 'deductions';
//                         Image = DepositSlip;
//                         RunObject = Report 51096;
//                     } */
//                     action("Staff pension")
//                     {
//                         Caption = 'Staff pension';
//                         Image = Aging;
//                         ApplicationArea = All;
//                         //RunObject = Report 51099;
//                     }
//                     action("Gross Netpay")
//                     {
//                         Caption = 'Gross Netpay';
//                         Image = Giro;
//                         RunObject = Report 51098;
//                         ApplicationArea = All;
//                     }
//                     action("Third Rule")
//                     {
//                         Caption = 'Third Rule';
//                         Image = AddWatch;
//                         RunObject = Report 51146;
//                         ApplicationArea = All;
//                     }
//                     action("Co_op Remittance")
//                     {
//                         Caption = 'Co_op Remittance';
//                         Image = CreateForm;
//                         RunObject = Report 51107;
//                         ApplicationArea = All;
//                     }
//                     separator("setup finance")
//                     {
//                         Caption = 'setup finance';
//                     }
//                     action("receipt type")
//                     {
//                         Caption = 'receipt type';
//                         Image = ServiceSetup;
//                         ApplicationArea = All;
//                         //RunObject = Page 68181;
//                     }
//                     action(Transactions)
//                     {
//                         Caption = 'Transactions';
//                         RunObject = Report 51133;
//                         ApplicationArea = All;
//                     }
//                     action("bank Schedule")
//                     {
//                         Caption = 'bank Schedule';
//                         RunObject = Report 51144;
//                         ApplicationArea = All;
//                     }
//                     separator("a")
//                     {
//                     }
//                     action("Paye Scheule")
//                     {
//                         Caption = 'Paye Scheule';
//                         RunObject = Report 51742;
//                         ApplicationArea = All;
//                     }
//                     action("Employer Certificate")
//                     {
//                         Caption = 'Employer Certificate';
//                         ApplicationArea = All;
//                         //RunObject = Report 51743;
//                     }
//                     action("P.10")
//                     {
//                         Caption = 'P.10';
//                         ApplicationArea = All;
//                         //RunObject = Report 51744;
//                     }
//                     action(NSSF)
//                     {
//                         Caption = 'NSSF';
//                         Image = Replan;
//                         ApplicationArea = All;

//                         //RunObject = Report 51780;
//                     }
//                     action(PAYE)
//                     {
//                         Caption = 'PAYE';
//                         Image = Reconcile;
//                         ApplicationArea = All;

//                         //RunObject = Report 51781;
//                     }
//                     action(HELB)
//                     {
//                         Caption = 'HELB';
//                         Image = Hierarchy;
//                         ApplicationArea = All;

//                         //RunObject = Report 52017866;
//                         // RunObject = "PRL-HELB Report";
//                     }
//                     action(NHIF)
//                     {
//                         Caption = 'NHIF';
//                         Image = RefreshText;

//                         RunObject = Report "PRL-NHIF Report";
//                         ApplicationArea = All;
//                     }
//                 }
//             }
//             group("Fixed Reports")
//             {
//                 Caption = 'Fixed Reports';
//                 group(Fixed_Reports)
//                 {
//                     Caption = 'Fixed Reports';
//                     Image = Worksheets;
//                     separator("Fixed Assets")
//                     {
//                         Caption = 'Fixed Assets';
//                     }
//                     action("Fixed Assets List")
//                     {
//                         Caption = 'Fixed Assets List';
//                         Image = "Report";

//                         RunObject = Report 5601;
//                         ApplicationArea = All;
//                     }
//                     action("Acquisition List")
//                     {
//                         Caption = 'Acquisition List';
//                         Image = "Report";

//                         //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
//                         //PromotedCategory = "Report";
//                         RunObject = Report 5608;
//                         ApplicationArea = All;
//                     }
//                     action(Details)
//                     {
//                         Caption = 'Details';
//                         Image = View;

//                         RunObject = Report 5604;
//                         ApplicationArea = All;
//                     }
//                     action("Book Value 01")
//                     {
//                         Caption = 'Book Value 01';
//                         Image = "Report";

//                         //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
//                         //PromotedCategory = "Report";
//                         RunObject = Report 5605;
//                         ApplicationArea = All;
//                     }
//                     action("Book Value 02")
//                     {
//                         Caption = 'Book Value 02';
//                         Image = "Report";

//                         //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
//                         //PromotedCategory = "Report";
//                         RunObject = Report 5606;
//                         ApplicationArea = All;
//                     }
//                     action(Analysis)
//                     {
//                         Caption = 'Analysis';
//                         Image = "Report";

//                         RunObject = Report 5600;
//                         ApplicationArea = All;
//                     }
//                     action("Projected Value")
//                     {
//                         Caption = 'Projected Value';
//                         Image = "Report";

//                         RunObject = Report 5607;
//                         ApplicationArea = All;
//                     }
//                     action("G/L Analysis")
//                     {
//                         Caption = 'G/L Analysis';
//                         Image = "Report";

//                         //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
//                         //PromotedCategory = "Report";
//                         RunObject = Report 5610;
//                         ApplicationArea = All;
//                     }
//                     action("Student Balance")
//                     {
//                         Caption = 'Student Balance';
//                         Image = Confirm;
//                         ApplicationArea = All;

//                         //RunObject = Report 51258;
//                     }
//                 }
//             }
//         }



//         area(Creation)
//         {
//         }
//         area(sections)
//         {
//             group("Tasks Management")
//             {
//                 Caption = '&Tasks Management';
//                 Image = LotInfo;
//                 action("To-Do List")
//                 {
//                     Caption = '&To-Do List';
//                     ApplicationArea = All;
//                     RunObject = Page "To-Do List";
//                 }
//                 action("Task Group Setup")
//                 {
//                     Caption = '&Task Team';
//                     ApplicationArea = All;
//                     RunObject = page "Task Group Setup List";
//                 }
//             }
//             group(Planning)
//             {
//                 Caption = 'Planning/Calendar';
//                 Image = Capacities;

//                 action(Planning2)
//                 {
//                     Caption = 'Appointments';
//                     ApplicationArea = All;
//                     RunObject = Page "CEO-Appointments List";
//                 }
//                 action("Calendar Entries")
//                 {
//                     Caption = 'Calendar Entries';
//                     ApplicationArea = All;
//                     RunObject = Page "CEO-Calendar Deytails";
//                 }
//                 action(Calendar)
//                 {
//                     Caption = 'Calendar';
//                     ApplicationArea = All;
//                     RunObject = Page "CEO Calendar Names";
//                 }
//             }


//             group(Approvals)
//             {
//                 Caption = 'Approvals';
//                 Image = Alerts;
//                 action("Pending My Approval")
//                 {
//                     ApplicationArea = all;
//                     Caption = 'Pending My Approval';
//                     RunObject = Page "Approval Entries";
//                 }
//                 action("My Approval requests")
//                 {
//                     ApplicationArea = all;
//                     Caption = 'My Approval requests';
//                     RunObject = Page "Approval Request Entries";
//                 }

//             }
//             group(Common_req)
//             {
//                 Caption = 'Common Requisitions';
//                 Image = LotInfo;
//                 action("Stores Requisitions")
//                 {
//                     ApplicationArea = all;
//                     Caption = 'Stores Requisitions';
//                     RunObject = Page "PROC-Store Requisition";
//                 }

//                 action(Action1000000003)
//                 {
//                     ApplicationArea = all;
//                     Caption = 'Leave Applications';
//                     RunObject = Page "HRM-Leave Requisition List";
//                 }
//                 action("My Approved Leaves")
//                 {
//                     ApplicationArea = all;
//                     Caption = 'My Approved Leaves';
//                     Image = History;
//                     RunObject = Page "HRM-My Approved Leaves List";
//                 }

//             }
//         }
//     }
// }
