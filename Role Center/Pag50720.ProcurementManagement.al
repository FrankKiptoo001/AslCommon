page 50720 "Procurement Management"
{
    Caption = 'Purchasing Agent', Comment = '{Dependency=Match,"ProfileDescription_PURCHASINGAGENT"}';
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

            separator(Action28)
            {
            }
            action("Inventory - &Availability Plan")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Inventory - &Availability Plan';
                Image = ItemAvailability;
                RunObject = Report "Inventory - Availability Plan";
                ToolTip = 'View a list of the quantity of each item in customer, purchase, and transfer orders and the quantity available in inventory. The list is divided into columns that cover six periods with starting and ending dates as well as the periods before and after those periods. The list is useful when you are planning your inventory purchases.';
            }


        }
        area(embedding)
        {
            action(PurchaseOrders)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Purchase Orders';
                RunObject = Page "Purchase Order List";
                ToolTip = 'Create purchase orders to mirror sales documents that vendors send to you. This enables you to record the cost of purchases and to track accounts payable. Posting purchase orders dynamically updates inventory levels so that you can minimize inventory costs and provide better customer service. Purchase orders allow partial receipts, unlike with purchase invoices, and enable drop shipment directly from your vendor to your customer. Purchase orders can be created automatically from PDF or image files from your vendors by using the Incoming Documents feature.';
            }
            action(PurchaseOrdersPendConf)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Pending Confirmation';
                RunObject = Page "Purchase Order List";
                RunPageView = WHERE(Status = FILTER(Open));
                ToolTip = 'View the list of purchase orders that await the vendor''s confirmation. ';
            }
            action(PurchaseOrdersPartDeliv)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Partially Delivered';
                RunObject = Page "Purchase Order List";
                RunPageView = WHERE(Status = FILTER(Released),
                                    Receive = FILTER(true),
                                    "Completely Received" = FILTER(false));
                ToolTip = 'View the list of purchases that are partially received.';
            }
            action("Purchase Quotes")
            {
                ApplicationArea = Suite;
                Caption = 'Purchase Quotes';
                RunObject = Page "Purchase Quotes";
                ToolTip = 'Create purchase quotes to represent your request for quotes from vendors. Quotes can be converted to purchase orders.';
            }
            action("Blanket Purchase Orders")
            {
                ApplicationArea = Suite;
                Caption = 'Blanket Purchase Orders';
                RunObject = Page "Blanket Purchase Orders";
                ToolTip = 'Use blanket purchase orders as a framework for a long-term agreement between you and your vendors to buy large quantities that are to be delivered in several smaller shipments over a certain period of time. Blanket orders often cover only one item with predetermined delivery dates. The main reason for using a blanket order rather than a purchase order is that quantities entered on a blanket order do not affect item availability and thus can be used as a worksheet for monitoring, forecasting, and planning purposes..';
            }
            action("Purchase Invoices")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Purchase Invoices';
                RunObject = Page "Purchase Invoices";
                ToolTip = 'Create purchase invoices to mirror sales documents that vendors send to you. This enables you to record the cost of purchases and to track accounts payable. Posting purchase invoices dynamically updates inventory levels so that you can minimize inventory costs and provide better customer service. Purchase invoices can be created automatically from PDF or image files from your vendors by using the Incoming Documents feature.';
            }
            action("Purchase Return Orders")
            {
                ApplicationArea = PurchReturnOrder;
                Caption = 'Purchase Return Orders';
                RunObject = Page "Purchase Return Order List";
                ToolTip = 'Create purchase return orders to mirror sales return documents that vendors send to you for incorrect or damaged items that you have paid for and then returned to the vendor. Purchase return orders enable you to ship back items from multiple purchase documents with one purchase return and support warehouse documents for the item handling. Purchase return orders can be created automatically from PDF or image files from your vendors by using the Incoming Documents feature. Note: If you have not yet paid for an erroneous purchase, you can simply cancel the posted purchase invoice to automatically revert the financial transaction.';
            }
            action("Purchase Credit Memos")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Purchase Credit Memos';
                RunObject = Page "Purchase Credit Memos";
                ToolTip = 'Create purchase credit memos to mirror sales credit memos that vendors send to you for incorrect or damaged items that you have paid for and then returned to the vendor. If you need more control of the purchase return process, such as warehouse documents for the physical handling, use purchase return orders, in which purchase credit memos are integrated. Purchase credit memos can be created automatically from PDF or image files from your vendors by using the Incoming Documents feature. Note: If you have not yet paid for an erroneous purchase, you can simply cancel the posted purchase invoice to automatically revert the financial transaction.';
            }
            action("Assembly Orders")
            {
                ApplicationArea = Assembly;
                Caption = 'Assembly Orders';
                RunObject = Page "Assembly Orders";
                ToolTip = 'View ongoing assembly orders.';
            }
            action("Sales Orders")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Sales Orders';
                Image = "Order";
                RunObject = Page "Sales Order List";
                ToolTip = 'Record your agreements with customers to sell certain products on certain delivery and payment terms. Sales orders, unlike sales invoices, allow you to ship partially, deliver directly from your vendor to your customer, initiate warehouse handling, and print various customer-facing documents. Sales invoicing is integrated in the sales order process.';
            }
            action(Vendors)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Vendors';
                Image = Vendor;
                RunObject = Page "Vendor List";
                ToolTip = 'View or edit detailed information for the vendors that you trade with. From each vendor card, you can open related information, such as purchase statistics and ongoing orders, and you can define special prices and line discounts that the vendor grants you if certain conditions are met.';
            }
            action(Items)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Items';
                Image = Item;
                RunObject = Page "Item List";
                ToolTip = 'View or edit detailed information for the products that you trade in. The item card can be of type Inventory or Service to specify if the item is a physical unit or a labor time unit. Here you also define if items in inventory or on incoming orders are automatically reserved for outbound documents and whether order tracking links are created between demand and supply to reflect planning actions.';
            }
            action("Catalog Items")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Catalog Items';
                Image = NonStockItem;
                RunObject = Page "Catalog Item List";
                ToolTip = 'View the list of items that you do not carry in inventory. ';
            }
            action("Stockkeeping Units")
            {
                ApplicationArea = Warehouse;
                Caption = 'Stockkeeping Units';
                Image = SKU;
                RunObject = Page "Stockkeeping Unit List";
                ToolTip = 'Open the list of item SKUs to view or edit instances of item at different locations or with different variants. ';
            }
            action("Purchase Analysis Reports")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Purchase Analysis Reports';
                RunObject = Page "Analysis Report Purchase";
                RunPageView = WHERE("Analysis Area" = FILTER(Purchase));
                ToolTip = 'Analyze the dynamics of your purchase volumes. You can also use the report to analyze your vendors'' performance and purchase prices.';
            }
            action("Inventory Analysis Reports")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Inventory Analysis Reports';
                RunObject = Page "Analysis Report Inventory";
                RunPageView = WHERE("Analysis Area" = FILTER(Inventory));
                ToolTip = 'Analyze the dynamics of your inventory according to key performance indicators that you select, for example inventory turnover. You can also use the report to analyze your inventory costs, in terms of direct and indirect costs, as well as the value and quantities of your different types of inventory.';
            }
            action("Item Journals")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Item Journals';
                RunObject = Page "Item Journal Batches";
                RunPageView = WHERE("Template Type" = CONST(Item),
                                    Recurring = CONST(false));
                ToolTip = 'Post item transactions directly to the item ledger to adjust inventory in connection with purchases, sales, and positive or negative adjustments without using documents. You can save sets of item journal lines as standard journals so that you can perform recurring postings quickly. A condensed version of the item journal function exists on item cards for quick adjustment of an items inventory quantity.';
            }
            action("Purchase Journals")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Purchase Journals';
                RunObject = Page "General Journal Batches";
                RunPageView = WHERE("Template Type" = CONST(Purchases),
                                    Recurring = CONST(false));
                ToolTip = 'Post any purchase-related transaction directly to a vendor, bank, or general ledger account instead of using dedicated documents. You can post all types of financial purchase transactions, including payments, refunds, and finance charge amounts. Note that you cannot post item quantities with a purchase journal.';
            }
            action(RequisitionWorksheets)
            {
                ApplicationArea = Planning;
                Caption = 'Requisition Worksheets';
                RunObject = Page "Req. Wksh. Names";
                RunPageView = WHERE("Template Type" = CONST("Req."),
                                    Recurring = CONST(false));
                ToolTip = 'Calculate a supply plan to fulfill item demand with purchases or transfers.';
            }
            action(SubcontractingWorksheets)
            {
                ApplicationArea = Planning;
                Caption = 'Subcontracting Worksheets';
                RunObject = Page "Req. Wksh. Names";
                RunPageView = WHERE("Template Type" = CONST("For. Labor"),
                                    Recurring = CONST(false));
                ToolTip = 'Calculate the needed production supply, find the production orders that have material ready to send to a subcontractor, and automatically create purchase orders for subcontracted operations from production order routings.';
            }
            action("Standard Cost Worksheets")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Standard Cost Worksheets';
                RunObject = Page "Standard Cost Worksheet Names";
                ToolTip = 'Review or update standard costs. Purchasers, production or assembly managers can use the worksheet to simulate the effect on the cost of the manufactured or assembled item if the standard cost for consumption, production capacity usage, or assembly resource usage is changed. You can set a cost change to take effect on a specified date.';
            }
        }
        area(sections)
        {
            group("Store Requisition")
            {
                Caption = 'Store Requisitions';
                action("Store Requests")
                {
                    ApplicationArea = All;
                    Image = Document;
                    RunObject = Page "PROC-Store Requisition";
                }

                action("Posted Store Requisitions")
                {
                    Caption = 'Posted SRNS';
                    ApplicationArea = All;
                    Image = PostedOrder;
                    RunObject = Page "PROC-Posted Store Reqs";
                }
            }
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
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
                action("Posted Return Shipments")
                {
                    ApplicationArea = PurchReturnOrder;
                    Caption = 'Posted Return Shipments';
                    RunObject = Page "Posted Return Shipments";
                    ToolTip = 'Open the list of posted return shipments.';
                }
                action("Posted Purchase Credit Memos")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Posted Purchase Credit Memos';
                    RunObject = Page "Posted Purchase Credit Memos";
                    ToolTip = 'Open the list of posted purchase credit memos.';
                }
                action("Posted Assembly Orders")
                {
                    ApplicationArea = Assembly;
                    Caption = 'Posted Assembly Orders';
                    RunObject = Page "Posted Assembly Orders";
                    ToolTip = 'View completed assembly orders.';
                }
            }

            group("E- Tendering")
            {
                group(Tender)
                {
                    Caption = 'Tendering Process';


                    action("Tendering")
                    {
                        Caption = 'Tender Applicants';
                        ApplicationArea = basic, suite;
                        RunObject = Page "Tender Applicants List";
                    }
                    action(Tenders)
                    {
                        Caption = 'Tenders';
                        ApplicationArea = basic, suite;
                        RunObject = Page "Tender List";
                    }
                    action(SubmittedTenders)
                    {
                        Caption = 'Submitted Tenders';
                        ApplicationArea = basic, suite;
                        RunObject = Page "Tender Submission List View";
                    }
                    action(PreliminaryQualifiers)
                    {
                        Caption = 'Preliminary Qualifiers';
                        ApplicationArea = basic, suite;
                        //RunObject = Page "Tender Preliminary QualfyList";
                        RunObject = Page "Tender Prelim QualifyiedL";
                    }
                    action(TechnicalQualifiers)
                    {
                        Caption = 'Technical Qualifiers';
                        ApplicationArea = basic, suite;
                        RunObject = Page "Tender Technical QualifyiedL";
                        //RunObject = Page "Tender Technical QualifiedList";

                    }
                    action(DemoQualifiers)
                    {
                        Caption = 'Demonstration Qualifiers';
                        ApplicationArea = basic, suite;
                        RunObject = Page "Tender Demo QualifyiedL";
                        //RunObject = Page "Tender Demo QualifiedList";
                    }
                    action(FinancialQualifiers)
                    {
                        Caption = 'Financial Qualifiers';
                        ApplicationArea = basic, suite;
                        RunObject = Page "Tender Fin QualifyiedL";
                    }
                    action(Award)
                    {
                        Caption = 'Awarded';
                        ApplicationArea = basic, suite;
                        RunObject = Page "Tender Awarded List";
                    }




                    group(TenderSetup)
                    {

                        Caption = 'Setups';
                        action(PreliminarySetup)
                        {
                            Caption = 'Preliminary Setups';
                            ApplicationArea = basic, suite;
                            RunObject = Page "Tender Preliminary Reqs Setup";
                        }
                        action(TechnicalSetup)
                        {
                            Caption = 'Technical Setups';
                            ApplicationArea = basic, suite;
                            RunObject = Page "Tender Technical Eval Setup";
                        }
                        action(DemoSetup)
                        {
                            Caption = 'Demonstration Setups';
                            ApplicationArea = basic, suite;
                            RunObject = Page "Tender Demo Setup";
                        }
                        action(financialSetup)
                        {
                            Caption = 'Financial Setups';
                            ApplicationArea = All;
                            RunObject = Page "Tender Financial Setups";
                        }
                    }
                }
                group(TenderD)
                {
                    Caption = 'Failed Bids';
                    action(PQTenders)
                    {
                        Caption = 'Preliminary Disqualified';
                        ApplicationArea = basic, suite;
                        RunObject = Page "Tender Disq Preliminary List";
                    }
                    action(TQTenders)
                    {
                        Caption = 'Technical Disqualified';
                        ApplicationArea = basic, suite;
                        RunObject = Page "Tender Disq Technical List";
                    }
                    action(DQTenders)
                    {
                        Caption = 'Demo Disqualified';
                        ApplicationArea = basic, suite;
                        RunObject = Page "Tender Disq Demo List";
                    }
                    action(FQTenders)
                    {
                        Caption = 'Financial Disqualified';
                        ApplicationArea = basic, suite;
                        RunObject = Page "Tender Disq Financial List";
                    }

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
        area(creation)
        {
            group("Procurement Process")
            {
                group("Procurement Plan")
                {
                    action("Departmental Plan")
                    {
                        image = PlannedOrder;
                        ApplicationArea = Suite;
                        Caption = 'Procurement Plan';
                        RunObject = Page "PROC-Procurement Plan List";
                        ToolTip = 'Create purchase requisition from departments.';
                    }

                    action("Consolidated Plan")
                    {
                        Image = Planning;
                        ApplicationArea = Suite;
                        RunObject = Page "Consolidated Plan List";
                        ToolTip = 'Create purchase requisition from departments.';
                    }
                }
                group("Procurement Methods")
                {
                    group("Direct Purchases")
                    {
                        action("Direct LPO")
                        {
                            Image = MakeOrder;
                            ApplicationArea = All;
                            RunObject = Page "Direct Local Purchase Order";
                        }
                        action("Direct LSO")
                        {
                            Image = MakeOrder;
                            ApplicationArea = All;
                            RunObject = Page "Direct Local Service Order";
                        }
                    }
                    group("Request for Quatations")
                    {
                        action("Purchase Requisitions")
                        {
                            Image = ServiceCode;
                            ApplicationArea = Suite;
                            Caption = 'Purchase Requisitions';
                            RunObject = Page "FIN-Purchase Requisition";
                            ToolTip = 'Create purchase requisition from departments.';
                        }
                        action(FRQs)
                        {
                            Image = Purchase;
                            ApplicationArea = Suite;
                            Caption = 'RFQs';
                            RunObject = Page "PROC-Purchase Quote List";
                            ToolTip = 'Create purchase requisition from departments.';
                        }
                        action(Quotes)
                        {
                            Image = Purchase;
                            ApplicationArea = Suite;
                            Caption = 'Quotes';
                            RunObject = Page "Proc-Purchase Quotes List";
                            ToolTip = 'Create a Quote';
                        }
                        action("Procurement &Order")
                        {
                            ApplicationArea = Suite;
                            Caption = 'Local Purchase Order';
                            Image = Document;
                            RunObject = Page "Local Purchase Order";
                            ToolTip = 'Create a new purchase order.';
                        }

                        Action("Local Service Order")
                        {
                            ApplicationArea = All;
                            Image = ServiceCode;
                            RunObject = Page "Local Service Order";
                        }
                    }
                    Group("Direct Invoicing")
                    {
                        action("Purchase &Invoice")
                        {
                            ApplicationArea = Basic, Suite;
                            Caption = 'Purchase &Invoice';
                            Image = NewPurchaseInvoice;
                            RunObject = Page "Purchase Invoice";
                            RunPageMode = Create;
                            ToolTip = 'Create a new purchase invoice.';
                        }
                    }

                }

            }








        }
        area(processing)
        {
            separator(Tasks)
            {
                Caption = 'Tasks';
                IsHeader = true;
            }
            action("&Purchase Journal")
            {
                ApplicationArea = Basic, Suite;
                Caption = '&Purchase Journal';
                Image = Journals;
                RunObject = Page "Purchase Journal";
                ToolTip = 'Post purchase transactions directly to the general ledger. The purchase journal may already contain journal lines that are created as a result of related functions.';
            }
            action("Item &Journal")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Item &Journal';
                Image = Journals;
                RunObject = Page "Item Journal";
                ToolTip = 'Adjust the physical quantity of items on inventory.';
            }
            action("Order Plan&ning")
            {
                ApplicationArea = Planning;
                Caption = 'Order Plan&ning';
                Image = Planning;
                RunObject = Page "Order Planning";
                ToolTip = 'Plan supply orders order by order to fulfill new demand.';
            }
            separator(Action38)
            {
            }
            action("Requisition &Worksheet")
            {
                ApplicationArea = Planning;
                Caption = 'Requisition &Worksheet';
                Image = Worksheet;
                RunObject = Page "Req. Wksh. Names";
                RunPageView = WHERE("Template Type" = CONST("Req."),
                                    Recurring = CONST(false));
                ToolTip = 'Calculate a supply plan to fulfill item demand with purchases or transfers.';
            }


            separator(History)
            {
                Caption = 'History';
                IsHeader = true;
            }
            action("Navi&gate")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Find entries...';
                Image = Navigate;
                RunObject = Page Navigate;
                ShortCutKey = 'Shift+Ctrl+I';
                ToolTip = 'Find entries and documents that exist for the document number and posting date on the selected document. (Formerly this action was named Navigate.)';
            }
        }
    }
}