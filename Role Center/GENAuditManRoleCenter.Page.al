page 50722 "GEN-Audit Man. Role Center"
{
    Caption = 'Role Center';
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
        area(reporting)
        {
            group(Finance_01)
            {
                Caption = 'Finance';
                group(Finance)
                {
                    Caption = 'Finance';
                    Image = LotInfo;
                    action("&G/L Trial Balance")
                    {
                        Caption = '&G/L Trial Balance';
                        Image = "Report";

                        ApplicationArea = All;
                        //RunObject = Report 6;
                    }
                    action("&Bank Detail Trial Balance")
                    {
                        Caption = '&Bank Detail Trial Balance';
                        Image = "Report";
                        RunObject = Report "Bank Acc. - Detail Trial Bal.";
                        ApplicationArea = All;
                    }
                    action("&Account Schedule")
                    {
                        Caption = '&Account Schedule';
                        Image = "Report";
                        RunObject = Report "Account Schedule";
                        ApplicationArea = All;
                    }
                    /* action("Bu&dget")
                    {
                        Caption = 'Bu&dget';
                        Image = "Report";
                        RunObject = Report 8;
                    } */
                    action("Trial Bala&nce/Budget")
                    {
                        Caption = 'Trial Bala&nce/Budget';
                        Image = "Report";
                        RunObject = Report "Trial Balance/Budget";
                        ApplicationArea = All;
                    }
                    action("Trial Balance by &Period")
                    {
                        Caption = 'Trial Balance by &Period';
                        Image = "Report";
                        RunObject = Report "Trial Balance by Period";
                        ApplicationArea = All;
                    }
                    action("&Fiscal Year Balance")
                    {
                        Caption = '&Fiscal Year Balance';
                        Image = "Report";
                        RunObject = Report "Fiscal Year Balance";
                        ApplicationArea = All;
                    }
                    action("Balance Comp. - Prev. Y&ear")
                    {
                        Caption = 'Balance Comp. - Prev. Y&ear';
                        Image = "Report";
                        RunObject = Report "Balance Comp. - Prev. Year";
                        ApplicationArea = All;
                    }
                    /*  action("&Closing Trial Balance")
                     {
                         Caption = '&Closing Trial Balance';
                         Image = "Report";
                         RunObject = Report 10;
                     } */
                    separator("   ")
                    {
                    }
                    action("Cash Flow Date List")
                    {
                        Caption = 'Cash Flow Date List';
                        Image = "Report";
                        RunObject = Report "Cash Flow Date List";
                        ApplicationArea = All;
                    }
                    separator("    ")
                    {
                    }
                    action("Aged Accounts &Receivable")
                    {
                        Caption = 'Aged Accounts &Receivable';
                        Image = "Report";
                        RunObject = Report "Aged Accounts Receivable";
                        ApplicationArea = All;
                    }
                    action("Aged Accounts Pa&yable")
                    {
                        Caption = 'Aged Accounts Pa&yable';
                        Image = "Report";
                        RunObject = Report "Aged Accounts Payable";
                        ApplicationArea = All;
                    }
                    action("Reconcile Cus&t. and Vend. Accs")
                    {
                        Caption = 'Reconcile Cus&t. and Vend. Accs';
                        Image = "Report";
                        RunObject = Report "Reconcile Cust. and Vend. Accs";
                        ApplicationArea = All;
                    }
                    separator("T")
                    {
                    }
                    action("&VAT Registration No. Check")
                    {
                        Caption = '&VAT Registration No. Check';
                        Image = "Report";
                        RunObject = Report "VAT Registration No. Check";
                        ApplicationArea = All;
                    }
                    action("VAT E&xceptions")
                    {
                        Caption = 'VAT E&xceptions';
                        Image = "Report";
                        RunObject = Report "VAT Exceptions";
                        ApplicationArea = All;
                    }
                    action("VAT &Statement")
                    {
                        Caption = 'VAT &Statement';
                        Image = "Report";
                        RunObject = Report "VAT Statement";
                        ApplicationArea = All;
                    }
                    action("VAT - VIES Declaration Tax Aut&h")
                    {
                        Caption = 'VAT - VIES Declaration Tax Aut&h';
                        Image = "Report";
                        RunObject = Report "VAT- VIES Declaration Tax Auth";
                        ApplicationArea = All;
                    }
                    action("VAT - VIES Declaration Dis&k")
                    {
                        Caption = 'VAT - VIES Declaration Dis&k';
                        Image = "Report";
                        RunObject = Report "VAT- VIES Declaration Disk";
                        ApplicationArea = All;
                    }
                    action("EC Sales &List")
                    {
                        Caption = 'EC Sales &List';
                        Image = "Report";
                        RunObject = Report "EC Sales List";
                        ApplicationArea = All;
                    }
                    separator(" ")
                    {
                    }
                    action("&Intrastat - Checklist")
                    {
                        Caption = '&Intrastat - Checklist';
                        Image = "Report";
                        RunObject = Report "Intrastat - Checklist";
                        ApplicationArea = All;
                    }
                    action("Intrastat - For&m")
                    {
                        Caption = 'Intrastat - For&m';
                        Image = "Report";
                        RunObject = Report "Intrastat - Form";
                        ApplicationArea = All;
                    }
                    separator("  ")
                    {
                    }
                    action("Cost Accounting P/L Statement")
                    {
                        Caption = 'Cost Accounting P/L Statement';
                        Image = "Report";
                        RunObject = Report "Cost Acctg. Statement";
                        ApplicationArea = All;
                    }
                    action("CA P/L Statement per Period")
                    {
                        Caption = 'CA P/L Statement per Period';
                        Image = "Report";
                        RunObject = Report "Cost Acctg. Stmt. per Period";
                        ApplicationArea = All;
                    }
                    action("CA P/L Statement with Budget")
                    {
                        Caption = 'CA P/L Statement with Budget';
                        Image = "Report";
                        RunObject = Report "Cost Acctg. Statement/Budget";
                        ApplicationArea = All;
                    }
                    action("Cost Accounting Analysis")
                    {
                        Caption = 'Cost Accounting Analysis';
                        Image = "Report";
                        RunObject = Report "Cost Acctg. Analysis";
                        ApplicationArea = All;
                    }
                    separator("s")
                    {
                    }
                    action("Vendor - T&op 10 List")
                    {
                        Caption = 'Vendor - T&op 10 List';
                        Image = "Report";
                        ApplicationArea = All;
                        //RunObject = Report 311;
                    }
                    action("Vendor/&Item Purchases")
                    {
                        Caption = 'Vendor/&Item Purchases';
                        Image = "Report";
                        ApplicationArea = All;
                        //RunObject = Report 313;
                    }
                    separator("p")
                    {
                    }
                }
            }
            group("Procurement Reports")
            {
                Caption = 'Procurement Reports';
                group(Procurement)
                {
                    Caption = 'Procurement Reports';
                    Image = ProductDesign;
                    action("Inventory - &Availability Plan")
                    {
                        Caption = 'Inventory - &Availability Plan';
                        Image = ItemAvailability;

                        RunObject = Report "Inventory - Availability Plan";
                        ApplicationArea = All;
                    }
                    action("Inventory &Purchase Orders")
                    {
                        Caption = 'Inventory &Purchase Orders';
                        Image = "Report";

                        ApplicationArea = All;
                        //RunObject = Report 709;
                    }
                    action("Inventory - &Vendor Purchases")
                    {
                        Caption = 'Inventory - &Vendor Purchases';
                        Image = "Report";

                        ApplicationArea = All;
                        //RunObject = Report 714;
                    }
                    action("Inventory &Cost and Price List")
                    {
                        Caption = 'Inventory &Cost and Price List';
                        Image = "Report";

                        ApplicationArea = All;
                        //RunObject = Report 716;
                    }
                    /* action("Purchase Quote Request Report")
                    {
                        Caption = 'Purchase Quote Request Report';
                        Image = "Report";
                        
                        RunObject = Report 51074;
                    } */
                    action("Purchase Quote Request Report")
                    {
                        Caption = 'Purchase Quote Request Report';
                        Image = "Report";

                        ApplicationArea = All;
                        //RunObject = Report 39005490;
                    }
                    action("Local Purchase Orders")
                    {
                        Caption = 'Local Purchase Orders';
                        Image = "Report";

                        ApplicationArea = All;
                        //RunObject = Report 51092;
                    }
                    action("Purchase Requisition")
                    {
                        Caption = 'Purchase Requisition';
                        Image = "Report";

                        ApplicationArea = All;
                        //RunObject = Report 51242;
                    }
                    action("Purchase Order")
                    {
                        Caption = 'Purchase Order';
                        Image = "Report";

                        ApplicationArea = All;
                        //RunObject = Report 51574;
                    }
                }
            }
            group("PayrollReports")
            {
                Caption = 'Payroll Reports';
                group(payroll_Reports)
                {
                    Caption = 'Payroll Reports';
                    Image = Receivables;
                    action("Company Payroll Master")
                    {
                        Caption = 'Company Payroll Master';
                        Image = CompanyInformation;

                        ApplicationArea = All;
                        RunObject = Report "Payroll Summary 3";
                    }
                    action("view payslip")
                    {
                        Caption = 'vew payslip';
                        RunObject = Report "Individual Payslips V.1.1.3";
                        ApplicationArea = All;
                    }



                    action("Gross Netpay2")
                    {
                        Caption = 'Gross Netpay';
                        RunObject = Report prGrossNetPay;
                        ApplicationArea = All;
                    }
                    action("Third Rule2")
                    {
                        Caption = 'Third Rule';
                        RunObject = Report "A third Rule Report";
                        ApplicationArea = All;
                    }
                    action("Co_op Remittance3")
                    {
                        Caption = 'Co_op Remittance';
                        RunObject = Report "prCoop remmitance";
                        ApplicationArea = All;
                    }
                    action(Transactions2)
                    {
                        Caption = 'Transactions';
                        RunObject = Report "pr Transactions";
                        ApplicationArea = All;
                    }
                    action("bank Schedule3")
                    {
                        Caption = 'bank Schedule';
                        RunObject = Report "pr Bank Schedule";
                        ApplicationArea = All;
                    }
                    action("vew payslip")
                    {
                        Caption = 'vew payslip';
                        //Image = "report";

                        RunObject = Report IndividualPayslipsV113;
                        ApplicationArea = All;
                    }


                    action(deductions)
                    {
                        Caption = 'deductions';
                        Image = DepositSlip;
                        RunObject = Report "PRL-Deductions Summary 2 a";
                    }

                    action("Gross Netpay")
                    {
                        Caption = 'Gross Netpay';
                        Image = Giro;
                        RunObject = Report prGrossNetPay;
                        ApplicationArea = All;
                    }
                    action("Third Rule")
                    {
                        Caption = 'Third Rule';
                        Image = AddWatch;
                        RunObject = Report "A third Rule Report";
                        ApplicationArea = All;
                    }
                    action("Co_op Remittance")
                    {
                        Caption = 'Co_op Remittance';
                        Image = CreateForm;
                        RunObject = Report "prCoop remmitance";
                        ApplicationArea = All;
                    }

                    action(Transactions)
                    {
                        Caption = 'Transactions';
                        RunObject = Report "pr Transactions";
                        ApplicationArea = All;
                    }
                    action("bank Schedule")
                    {
                        Caption = 'bank Schedule';
                        RunObject = Report "pr Bank Schedule";
                        ApplicationArea = All;
                    }
                    separator("a")
                    {
                    }
                    action("Paye Scheule")
                    {
                        Caption = 'Paye Scheule';
                        RunObject = Report "prPaye Schedule mst";
                        ApplicationArea = All;
                    }
                    action(NHIF)
                    {
                        Caption = 'NHIF';
                        Image = RefreshText;

                        RunObject = Report "PRL-NHIF Report";
                        ApplicationArea = All;
                    }
                }
            }
            group("FixedReports")
            {
                Caption = 'Fixed Assets Reports';
                group(Fixed_Reports)
                {
                    Caption = 'Fixed Reports';
                    Image = Worksheets;
                    separator("Fixed Assets")
                    {
                        Caption = 'Fixed Assets';
                    }
                    action("Fixed Assets List")
                    {
                        Caption = 'Fixed Assets List';
                        Image = "Report";

                        RunObject = Report "Fixed Asset - List";
                        ApplicationArea = All;
                    }
                    action("Acquisition List")
                    {
                        Caption = 'Acquisition List';
                        Image = "Report";

                        //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                        //PromotedCategory = "Report";
                        RunObject = Report "Fixed Asset - Acquisition List";
                        ApplicationArea = All;
                    }
                    action(Details)
                    {
                        Caption = 'Details';
                        Image = View;

                        RunObject = Report "Fixed Asset - Details";
                        ApplicationArea = All;
                    }
                    action("Book Value 01")
                    {
                        Caption = 'Book Value 01';
                        Image = "Report";

                        //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                        //PromotedCategory = "Report";
                        RunObject = Report "Fixed Asset - Book Value 01";
                        ApplicationArea = All;
                    }
                    action("Book Value 02")
                    {
                        Caption = 'Book Value 02';
                        Image = "Report";

                        //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                        //PromotedCategory = "Report";
                        RunObject = Report "Fixed Asset - Book Value 02";
                        ApplicationArea = All;
                    }
                    action(Analysis)
                    {
                        Caption = 'Analysis';
                        Image = "Report";

                        RunObject = Report "Fixed Asset - Analysis";
                        ApplicationArea = All;
                    }
                    action("Projected Value")
                    {
                        Caption = 'Projected Value';
                        Image = "Report";

                        RunObject = Report "Fixed Asset - Projected Value";
                        ApplicationArea = All;
                    }
                    action("G/L Analysis")
                    {
                        Caption = 'G/L Analysis';
                        Image = "Report";

                        //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                        //PromotedCategory = "Report";
                        RunObject = Report "Fixed Asset - G/L Analysis";
                        ApplicationArea = All;
                    }
                    action("Student Balance")
                    {
                        Caption = 'Student Balance';
                        Image = Confirm;

                        ApplicationArea = All;
                        //RunObject = Report 51258;
                    }
                }
            }

            Group("Financial Management")
            {
                Image = Departments;
                ToolTip = 'Receipts, Imprests, Payment and bank transfers';

                action("Posted Receipts")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Receipts List';
                    Image = Journal;
                    RunObject = Page "FIN-Posted Receipts list";
                    ToolTip = 'Posted Receipts';
                }
                action("Posted Imprest")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Imprest';
                    Image = Journal;
                    RunObject = Page "FIN-Posted imprest list";
                    ToolTip = 'Posted Imprests';
                }
                action("Posted Imprest Accounting")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Imprest Accounting';
                    Image = Journal;
                    RunObject = Page "FIN-Posted Imprest Accounting";
                    ToolTip = 'Posted Imprest Accounting';
                }
                action("Posted Vouchers")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Vouchers';
                    Image = Journal;
                    RunObject = Page "FIN-Posted Payment Vouch.";
                    ToolTip = 'Posted Payment Vouchers';
                }
                action("Posted Petty Cash")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Petty Cash';
                    Image = Journal;
                    RunObject = Page "FIN-Posted petty cash";
                    ToolTip = 'Posted Petty Cash Vouchers';
                }
                action("Posted Claims")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Staff Claims';
                    Image = Journal;
                    RunObject = Page "FIN-Staff Claim List Posted";
                    ToolTip = 'posted Claims List';
                }
                action("Posted Bank Trasfers")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Bank Transfers';
                    Image = Journal;
                    RunObject = Page "FIN-Posted Interbank Trans2";
                    ToolTip = 'Posted Bank Trasfers';
                }
                action(Budget)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Budgets';
                    Image = CostBudget;
                    RunObject = Page "G/L Budget Names";
                    ToolTip = 'Financial Budgets';
                }
            }
            Group("Sales")
            {
                Caption = 'Posted Sales';
                action("Posted Sales Invoice")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Sales Invoices';
                    RunObject = Page "Posted Sales Invoices";
                    ToolTip = 'Open the list of posted sales invoices.';
                }
                action("Posted Sales Credit Memo")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Sales Credit Memos';
                    RunObject = Page "Posted Sales Credit Memos";
                    ToolTip = 'Open the list of posted sales credit memos.';
                }
            }

            group("Posted Purchases")
            {
                action("Posted Purchase Receipts")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Purchase Receipts';
                    RunObject = Page "Posted Purchase Receipts";
                    ToolTip = 'Open the list of posted purchase receipts.';
                }
                action("Posted Purchase Invoices")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Purchase Invoices';
                    RunObject = Page "Posted Purchase Invoices";
                    ToolTip = 'Open the list of posted purchase invoices.';
                }
                action("Posted Purchase Credit Memos")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Purchase Credit Memos';
                    RunObject = Page "Posted Purchase Credit Memos";
                    ToolTip = 'Open the list of posted purchase credit memos.';
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

                action("PurchaseRequisition")
                {
                    ApplicationArea = All;
                    RunObject = page "FIN-Purchase Requisition";
                }
                action("Stores Requisition")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = Page "PROC-Store Requisition";
                }
                action("Memo Applications")
                {
                    ApplicationArea = All;
                    Image = ManualExchangeRate;
                    RunObject = page "FIN-Memo Header List";
                }

            }
        }
        area(processing)
        {
            group(Group2)
            {
                Visible = false;
                separator(Tasks)
                {
                    Caption = 'Tasks';
                    IsHeader = true;
                }
                action("Calculate Deprec&iation")
                {
                    Caption = 'Calculate Deprec&iation';
                    Ellipsis = true;
                    Image = CalculateDepreciation;
                    RunObject = Report "Calculate Depreciation";
                    ApplicationArea = All;
                }
                action("Import Co&nsolidation from Database")
                {
                    Caption = 'Import Co&nsolidation from Database';
                    Ellipsis = true;
                    Image = ImportDatabase;
                    RunObject = Report "Import Consolidation from DB";
                    ApplicationArea = All;
                }

                action("P&ost Inventory Cost to G/L")
                {
                    Caption = 'P&ost Inventory Cost to G/L';
                    Image = PostInventoryToGL;
                    RunObject = Report "Post Inventory Cost to G/L";
                    ApplicationArea = All;
                }
                separator("q")
                {
                }
                action("C&reate Reminders")
                {
                    Caption = 'C&reate Reminders';
                    Ellipsis = true;
                    Image = CreateReminders;
                    RunObject = Report "Create Reminders";
                    ApplicationArea = All;
                }
                action("Create Finance Charge &Memos")
                {
                    Caption = 'Create Finance Charge &Memos';
                    Ellipsis = true;
                    Image = CreateFinanceChargememo;
                    RunObject = Report "Create Finance Charge Memos";
                    ApplicationArea = All;
                }
                separator("r")
                {
                }
                action("Calc. and Pos&t VAT Settlement")
                {
                    Caption = 'Calc. and Pos&t VAT Settlement';
                    Image = SettleOpenTransactions;
                    RunObject = Report "Calc. and Post VAT Settlement";
                    ApplicationArea = All;
                }
                action("Audit Register")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(sections)
        {
            ToolTip = 'Risk Register';
            group("Risks Register")
            {
                Image = RegisteredDocs;
                action("Risk List")
                {
                    RunObject = Page "AUDIT - Risk analysis lines";
                    ApplicationArea = All;
                }
                action("Submitted Risks Under Audit")
                {
                    RunObject = Page "Audit List in Unde Auditing";
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
                    RunObject = Page "Audit Assessment";
                    ApplicationArea = All;
                }
                action("Audit Review List")
                {
                    RunObject = Page "Audit Assessmnt Review List";
                    ApplicationArea = All;
                }
                action("Archived Audit List")
                {
                    RunObject = Page "Audit Assemnt Archived";
                    ApplicationArea = All;
                }
            }
            group(Common_req1)
            {
                Caption = 'Common Requisitions';
                Image = LotInfo;
                action("Stores Requisitions")
                {
                    Caption = 'Stores Requisitions';
                    ApplicationArea = All;
                    RunObject = Page "PROC-Store Requisition";
                }
                action("Imprest Requisitions")
                {
                    Caption = 'Imprest Requisitions';
                    ApplicationArea = All;
                    RunObject = Page "FIN-Imprest List UP";
                }
                action("Leave Applications")
                {
                    Caption = 'Leave Applications';
                    RunObject = Page "HRM-Leave Requisition List";
                    ApplicationArea = All;
                }
                action("My Approved Leaves")
                {
                    Caption = 'My Approved Leaves';
                    Image = History;
                    RunObject = Page "HRM-My Approved Leaves List";
                    ApplicationArea = All;
                }

            }
        }
    }
}

