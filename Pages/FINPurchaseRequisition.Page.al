// page 68217 "FIN-Purchase Requisition"
// {
//     CardPageID = "PROC-Internal Requisitions U";
//     PageType = List;
//     SourceTable = 38;
//     SourceTableView = WHERE("Document Type" = FILTER(Quote),
//                             DocApprovalType = FILTER(Requisition | Purchase),
//                             Status = FILTER(Open | 'Pending Approval' | Released));

//     layout
//     {
//         area(content)
//         {
//             repeater(Group)
//             {
//                 field("Document Type"; Rec."Document Type")
//                 {
//                 }
//                 field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
//                 {
//                 }
//                 field("No."; Rec."No.")
//                 {
//                 }
//                 field("Pay-to Vendor No."; Rec."Pay-to Vendor No.")
//                 {
//                 }
//                 field("Pay-to Name"; Rec."Pay-to Name")
//                 {
//                 }
//                 field("Pay-to Name 2"; Rec."Pay-to Name 2")
//                 {
//                 }
//                 field("Pay-to Address"; Rec."Pay-to Address")
//                 {
//                 }
//                 field("Pay-to Address 2"; Rec."Pay-to Address 2")
//                 {
//                 }
//                 field("Expected Receipt Date"; Rec."Expected Receipt Date")
//                 {
//                 }
//                 field("Pay-to City"; Rec."Pay-to City")
//                 {
//                 }
//                 field("Pay-to Contact"; Rec."Pay-to Contact")
//                 {
//                 }
//                 field("Your Reference"; Rec."Your Reference")
//                 {
//                 }
//                 field("Ship-to Code"; Rec."Ship-to Code")
//                 {
//                 }
//                 field("Ship-to Name"; Rec."Ship-to Name")
//                 {
//                 }
//                 field("Ship-to Name 2"; Rec."Ship-to Name 2")
//                 {
//                 }
//                 field("Ship-to Address"; Rec."Ship-to Address")
//                 {
//                 }
//                 field("Ship-to Address 2"; Rec."Ship-to Address 2")
//                 {
//                 }
//                 field("Ship-to City"; Rec."Ship-to City")
//                 {
//                 }
//                 field("Ship-to Contact"; Rec."Ship-to Contact")
//                 {
//                 }
//                 field("Order Date"; Rec."Order Date")
//                 {
//                 }
//                 field("Posting Date"; Rec."Posting Date")
//                 {
//                 }
//                 field("Posting Description"; Rec."Posting Description")
//                 {
//                 }
//                 field("Payment Terms Code"; Rec."Payment Terms Code")
//                 {
//                 }
//                 field("Due Date"; Rec."Due Date")
//                 {
//                 }
//                 field("Payment Discount %"; Rec."Payment Discount %")
//                 {
//                 }
//                 field("Pmt. Discount Date"; Rec."Pmt. Discount Date")
//                 {
//                 }
//                 field("Shipment Method Code"; Rec."Shipment Method Code")
//                 {
//                 }
//                 field("Location Code"; Rec."Location Code")
//                 {
//                 }
//                 field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
//                 {
//                 }
//                 field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
//                 {
//                 }
//                 field("Vendor Posting Group"; Rec."Vendor Posting Group")
//                 {
//                 }
//                 field("Currency Code"; Rec."Currency Code")
//                 {
//                 }
//                 field("Currency Factor"; Rec."Currency Factor")
//                 {
//                 }
//                 field("Prices Including VAT"; Rec."Prices Including VAT")
//                 {
//                 }
//                 field("Invoice Disc. Code"; Rec."Invoice Disc. Code")
//                 {
//                 }
//                 field("Language Code"; Rec."Language Code")
//                 {
//                 }
//                 field("Purchaser Code"; Rec."Purchaser Code")
//                 {
//                 }
//                 field("Order Class"; Rec."Order Class")
//                 {
//                 }
//                 field(Comment; Rec.Comment)
//                 {
//                 }
//                 field("No. Printed"; Rec."No. Printed")
//                 {
//                 }
//                 field("On Hold"; Rec."On Hold")
//                 {
//                 }
//                 field("Applies-to Doc. Type"; Rec."Applies-to Doc. Type")
//                 {
//                 }
//                 field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
//                 {
//                 }
//                 field("Bal. Account No."; Rec."Bal. Account No.")
//                 {
//                 }
//                 field(Receive; Rec.Receive)
//                 {
//                 }
//                 field(Invoice; Rec.Invoice)
//                 {
//                 }
//                 field("Print Posted Documents"; Rec."Print Posted Documents")
//                 {
//                 }
//                 field(Amount; Rec.Amount)
//                 {
//                 }
//                 field("Amount Including VAT"; Rec."Amount Including VAT")
//                 {
//                 }
//                 field("Receiving No."; Rec."Receiving No.")
//                 {
//                 }
//                 field("Posting No."; Rec."Posting No.")
//                 {
//                 }
//                 field("Last Receiving No."; Rec."Last Receiving No.")
//                 {
//                 }
//                 field("Last Posting No."; Rec."Last Posting No.")
//                 {
//                 }
//                 field("Vendor Order No."; Rec."Vendor Order No.")
//                 {
//                 }
//                 field("Vendor Shipment No."; Rec."Vendor Shipment No.")
//                 {
//                 }
//                 field("Vendor Invoice No."; Rec."Vendor Invoice No.")
//                 {
//                 }
//                 field("Vendor Cr. Memo No."; Rec."Vendor Cr. Memo No.")
//                 {
//                 }
//                 field("VAT Registration No."; Rec."VAT Registration No.")
//                 {
//                 }
//                 field("Sell-to Customer No."; Rec."Sell-to Customer No.")
//                 {
//                 }
//                 field("Reason Code"; Rec."Reason Code")
//                 {
//                 }
//                 field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
//                 {
//                 }
//                 field("Transaction Type"; Rec."Transaction Type")
//                 {
//                 }
//                 field("Transport Method"; Rec."Transport Method")
//                 {
//                 }
//                 field("VAT Country/Region Code"; Rec."VAT Country/Region Code")
//                 {
//                 }
//                 field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
//                 {
//                 }
//                 field("Buy-from Vendor Name 2"; Rec."Buy-from Vendor Name 2")
//                 {
//                 }
//                 field("Buy-from Address"; Rec."Buy-from Address")
//                 {
//                 }
//                 field("Buy-from Address 2"; Rec."Buy-from Address 2")
//                 {
//                 }
//                 field("Buy-from City"; Rec."Buy-from City")
//                 {
//                 }
//                 field("Buy-from Contact"; Rec."Buy-from Contact")
//                 {
//                 }
//                 field("Pay-to Post Code"; Rec."Pay-to Post Code")
//                 {
//                 }
//                 field("Pay-to County"; Rec."Pay-to County")
//                 {
//                 }
//                 field("Pay-to Country/Region Code"; Rec."Pay-to Country/Region Code")
//                 {
//                 }
//                 field("Buy-from Post Code"; Rec."Buy-from Post Code")
//                 {
//                 }
//                 field("Buy-from County"; Rec."Buy-from County")
//                 {
//                 }
//                 field("Buy-from Country/Region Code"; Rec."Buy-from Country/Region Code")
//                 {
//                 }
//                 field("Ship-to Post Code"; Rec."Ship-to Post Code")
//                 {
//                 }
//                 field("Ship-to County"; Rec."Ship-to County")
//                 {
//                 }
//                 field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
//                 {
//                 }
//                 field("Bal. Account Type"; Rec."Bal. Account Type")
//                 {
//                 }
//                 field("Order Address Code"; Rec."Order Address Code")
//                 {
//                 }
//                 field("Entry Point"; Rec."Entry Point")
//                 {
//                 }
//                 field(Correction; Rec.Correction)
//                 {
//                 }
//                 field("Document Date"; Rec."Document Date")
//                 {
//                 }
//                 field("Area"; Rec."Area")
//                 {

//                 }
//                 field("Transaction Specification"; Rec."Transaction Specification")
//                 {
//                 }
//                 field("Payment Method Code"; Rec."Payment Method Code")
//                 {
//                 }
//                 field("No. Series"; Rec."No. Series")
//                 {
//                 }
//                 field("Posting No. Series"; Rec."Posting No. Series")
//                 {
//                 }
//                 field("Receiving No. Series"; Rec."Receiving No. Series")
//                 {
//                 }
//                 field("Tax Area Code"; Rec."Tax Area Code")
//                 {
//                 }
//                 field("Tax Liable"; Rec."Tax Liable")
//                 {
//                 }
//                 field("VAT Bus. Posting Group"; "VAT Bus. Posting Group")
//                 {
//                 }
//                 field("Applies-to ID"; "Applies-to ID")
//                 {
//                 }
//                 field("VAT Base Discount %"; "VAT Base Discount %")
//                 {
//                 }
//                 field(Status; Status)
//                 {
//                 }
//                 field("Invoice Discount Calculation"; "Invoice Discount Calculation")
//                 {
//                 }
//                 field("Invoice Discount Value"; "Invoice Discount Value")
//                 {
//                 }
//                 field("Send IC Document"; "Send IC Document")
//                 {
//                 }
//                 field("IC Status"; "IC Status")
//                 {
//                 }
//                 field("Buy-from IC Partner Code"; "Buy-from IC Partner Code")
//                 {
//                 }
//                 field("Pay-to IC Partner Code"; "Pay-to IC Partner Code")
//                 {
//                 }
//                 field("IC Direction"; "IC Direction")
//                 {
//                 }
//                 field("Prepayment No."; "Prepayment No.")
//                 {
//                 }
//                 field("Last Prepayment No."; "Last Prepayment No.")
//                 {
//                 }
//                 field("Prepmt. Cr. Memo No."; "Prepmt. Cr. Memo No.")
//                 {
//                 }
//                 field("Last Prepmt. Cr. Memo No."; "Last Prepmt. Cr. Memo No.")
//                 {
//                 }
//                 field("Prepayment %"; "Prepayment %")
//                 {
//                 }
//                 field("Prepayment No. Series"; "Prepayment No. Series")
//                 {
//                 }
//                 field("Compress Prepayment"; "Compress Prepayment")
//                 {
//                 }
//                 field("Prepayment Due Date"; "Prepayment Due Date")
//                 {
//                 }
//                 field("Prepmt. Cr. Memo No. Series"; "Prepmt. Cr. Memo No. Series")
//                 {
//                 }
//                 field("Prepmt. Posting Description"; "Prepmt. Posting Description")
//                 {
//                 }
//                 field("Prepmt. Pmt. Discount Date"; "Prepmt. Pmt. Discount Date")
//                 {
//                 }
//                 field("Prepmt. Payment Terms Code"; "Prepmt. Payment Terms Code")
//                 {
//                 }
//                 field("Prepmt. Payment Discount %"; "Prepmt. Payment Discount %")
//                 {
//                 }
//                 field("Quote No."; "Quote No.")
//                 {
//                 }
//                 field("Job Queue Status"; "Job Queue Status")
//                 {
//                 }
//                 field("Job Queue Entry ID"; "Job Queue Entry ID")
//                 {
//                 }
//                 field("Dimension Set ID"; "Dimension Set ID")
//                 {
//                 }
//                 field("No. of Archived Versions"; "No. of Archived Versions")
//                 {
//                 }
//                 field("Doc. No. Occurrence"; "Doc. No. Occurrence")
//                 {
//                 }
//                 field("Campaign No."; "Campaign No.")
//                 {
//                 }
//                 field("Buy-from Contact No."; "Buy-from Contact No.")
//                 {
//                 }
//                 field("Pay-to Contact No."; "Pay-to Contact No.")
//                 {
//                 }
//                 field("Responsibility Center"; "Responsibility Center")
//                 {
//                 }
//                 field("Completely Received"; "Completely Received")
//                 {
//                 }
//                 field("Posting from Whse. Ref."; "Posting from Whse. Ref.")
//                 {
//                 }
//                 field("Location Filter"; "Location Filter")
//                 {
//                 }
//                 field("Requested Receipt Date"; "Requested Receipt Date")
//                 {
//                 }
//                 field("Promised Receipt Date"; "Promised Receipt Date")
//                 {
//                 }
//                 field("Lead Time Calculation"; "Lead Time Calculation")
//                 {
//                 }
//                 field("Inbound Whse. Handling Time"; "Inbound Whse. Handling Time")
//                 {
//                 }
//                 field("Date Filter"; "Date Filter")
//                 {
//                 }
//                 field("Vendor Authorization No."; "Vendor Authorization No.")
//                 {
//                 }
//                 field("Return Shipment No."; "Return Shipment No.")
//                 {
//                 }
//                 field("Return Shipment No. Series"; "Return Shipment No. Series")
//                 {
//                 }
//                 field(Ship; Ship)
//                 {
//                 }
//                 field("Last Return Shipment No."; "Last Return Shipment No.")
//                 {
//                 }
//                 field("Assigned User ID"; "Assigned User ID")
//                 {
//                 }
//                 field(Copied; Copied)
//                 {
//                 }
//                 field("Debit Note"; "Debit Note")
//                 {
//                 }
//                 field("Procurement Request No."; "Procurement Request No.")
//                 {
//                 }
//                 field("Invoice Amount"; "Invoice Amount")
//                 {
//                 }
//                 field("Request No"; "Request No")
//                 {
//                 }
//                 field(Commited; Commited)
//                 {
//                 }
//                 field(Department; Department)
//                 {
//                 }
//                 field("Delivery No"; "Delivery No")
//                 {
//                 }
//                 field("Ledger Card No"; "Ledger Card No")
//                 {
//                 }
//                 field("PRN No"; "PRN No")
//                 {
//                 }
//                 field("Approval Status"; "Approval Status")
//                 {
//                 }
//                 field("PO Status"; "PO Status")
//                 {
//                 }
//                 field("Finance Status"; "Finance Status")
//                 {
//                 }
//                 field("Admin Status"; "Admin Status")
//                 {
//                 }
//                 field("P.O Name"; "P.O Name")
//                 {
//                 }
//                 field("P.O Approval Date"; "P.O Approval Date")
//                 {
//                 }
//                 field("Finance Approved By"; "Finance Approved By")
//                 {
//                 }
//                 field("Finance Approval Date"; "Finance Approval Date")
//                 {
//                 }
//                 field("Admin Approved By"; "Admin Approved By")
//                 {
//                 }
//                 field("Admin Approved Date"; "Admin Approved Date")
//                 {
//                 }
//                 field("Contract No."; "Contract No.")
//                 {
//                 }
//                 field("Quotation No."; "Quotation No.")
//                 {
//                 }
//                 field("Request for Quote No."; "Request for Quote No.")
//                 {
//                 }
//                 field("Document Type 2"; "Document Type 2")
//                 {
//                 }
//                 field("Tendor Number"; "Tendor Number")
//                 {
//                 }
//                 field(Cancelled; Cancelled)
//                 {
//                 }
//                 field("Cancelled By"; "Cancelled By")
//                 {
//                 }
//                 field("Cancelled Date"; "Cancelled Date")
//                 {
//                 }
//                 field(DocApprovalType; DocApprovalType)
//                 {
//                 }
//                 field("Procurement Type Code"; "Procurement Type Code")
//                 {
//                 }
//             }
//         }
//     }

//     actions
//     {
//         area(navigation)
//         {
//             group("&Quote")
//             {
//                 Caption = '&Quote';
//                 action(Statistics)
//                 {
//                     Caption = 'Statistics';
//                     Image = Statistics;
//                     Promoted = true;
//                     PromotedCategory = Process;
//                     ShortCutKey = 'F7';

//                     trigger OnAction()
//                     begin
//                         CalcInvDiscForHeader;
//                         COMMIT;
//                         PAGE.RUNMODAL(PAGE::"Purchase Statistics", Rec);
//                     end;
//                 }
//                 action(Card)
//                 {
//                     Caption = 'Card';
//                     Image = EditLines;
//                     RunObject = Page 26;
//                     RunPageLink = "No." = FIELD("Buy-from Vendor No.");
//                     ShortCutKey = 'Shift+F7';
//                 }
//                 action("Co&mments")
//                 {
//                     Caption = 'Co&mments';
//                     Image = ViewComments;
//                     RunObject = Page 66;
//                     RunPageLink = "Document Type" = FIELD("Document Type"),
//                                   "No." = FIELD("No."),
//                                   "Document Line No." = CONST(0);
//                 }
//                 action(Dimensions_2)
//                 {
//                     Caption = 'Dimensions';
//                     Image = Dimensions;

//                     trigger OnAction()
//                     begin
//                         Rec.ShowDocDim;
//                     end;
//                 }
//                 action(Approvals)
//                 {
//                     Caption = 'Approvals';
//                     Image = Approvals;
//                     Promoted = true;
//                     PromotedIsBig = true;

//                     trigger OnAction()
//                     var
//                         ApprovalEntries: Page "658";
//                     begin
//                         //ApprovalEntries.Setfilters(DATABASE::"Purchase Header", "Document Type", "No.");
//                         ApprovalEntries.RUN;
//                     end;
//                 }
//                 action(Document)
//                 {
//                     Caption = 'Document';
//                 }
//             }
//             group("&Line")
//             {
//                 Caption = '&Line';
//                 group("Item Availability by")
//                 {
//                     Caption = 'Item Availability by';
//                     action(Period)
//                     {
//                         Caption = 'Period';

//                         trigger OnAction()
//                         begin
//                             //CurrPage.PurchLines.PAGE.ItemAvailability(0);
//                         end;
//                     }
//                     action(Variant)
//                     {
//                         Caption = 'Variant';

//                         trigger OnAction()
//                         begin
//                             //CurrPage.PurchLines.PAGE.ItemAvailability(1);
//                         end;
//                     }
//                     action(Location)
//                     {
//                         Caption = 'Location';

//                         trigger OnAction()
//                         begin
//                             //CurrPage.PurchLines.PAGE.ItemAvailability(2);
//                         end;
//                     }
//                 }
//                 action(Dimensions)
//                 {
//                     Caption = 'Dimensions';
//                     Image = Dimensions;
//                     ShortCutKey = 'Shift+Ctrl+D';

//                     trigger OnAction()
//                     begin
//                         //CurrPage.PurchLines.PAGE.ShowDimensions;
//                     end;
//                 }
//                 action("Item Charge &Assignment")
//                 {
//                     Caption = 'Item Charge &Assignment';

//                     trigger OnAction()
//                     begin
//                         //CurrPage.PurchLines.PAGE.ItemChargeAssgnt;
//                     end;
//                 }
//                 action("Item &Tracking Lines")
//                 {
//                     Caption = 'Item &Tracking Lines';
//                     Image = ItemTrackingLines;
//                     ShortCutKey = 'Shift+Ctrl+I';

//                     trigger OnAction()
//                     begin
//                         //CurrPage.PurchLines.PAGE.OpenItemTrackingLines;
//                     end;
//                 }
//             }
//         }
//         area(processing)
//         {
//             action("Make &Order")
//             {
//                 Caption = 'Make &Order';
//                 Image = MakeOrder;
//                 Promoted = true;
//                 PromotedCategory = Process;
//                 PromotedIsBig = true;
//                 Visible = false;

//                 trigger OnAction()
//                 var
//                     SalesHeader: Record 36;
//                     ApprovalMgt: Codeunit 439;
//                 begin
//                     IF LinesCommitted THEN
//                         ERROR('All Lines should be committed');

//                     /* IF ApprovalMgt.PrePostApprovalCheck(SalesHeader, Rec) THEN
//                         CODEUNIT.RUN(CODEUNIT::"Purch.-Quote to Order (Yes/No)", Rec); */
//                 end;
//             }
//             group("F&unctions")
//             {
//                 Caption = 'F&unctions';
//                 action("Calculate &Invoice Discount")
//                 {
//                     Caption = 'Calculate &Invoice Discount';
//                     Image = CalculateInvoiceDiscount;

//                     trigger OnAction()
//                     begin
//                         ApproveCalcInvDisc;
//                     end;
//                 }
//                 separator(rec001)
//                 {
//                 }
//                 action("E&xplode BOM")
//                 {
//                     Caption = 'E&xplode BOM';
//                     Image = ExplodeBOM;

//                     trigger OnAction()
//                     begin
//                         //CurrPage.PurchLines.PAGE.ExplodeBOM;
//                     end;
//                 }
//                 action("Insert &Ext. Texts")
//                 {
//                     Caption = 'Insert &Ext. Texts';

//                     trigger OnAction()
//                     begin
//                         //CurrPage.PurchLines.PAGE.InsertExtendedText(TRUE);
//                     end;
//                 }
//                 separator(rec002)
//                 {
//                 }
//                 action("Get St&d. Vend. Purchase Codes")
//                 {
//                     Caption = 'Get St&d. Vend. Purchase Codes';
//                     Ellipsis = true;

//                     trigger OnAction()
//                     var
//                         StdVendPurchCode: Record 175;
//                     begin
//                         StdVendPurchCode.InsertPurchLines(Rec);
//                     end;
//                 }
//                 separator(rec004)
//                 {
//                 }
//                 action("Copy Document")
//                 {
//                     Caption = 'Copy Document';
//                     Ellipsis = true;
//                     Image = CopyDocument;

//                     trigger OnAction()
//                     begin
//                         CopyPurchDoc.SetPurchHeader(Rec);
//                         CopyPurchDoc.RUNMODAL;
//                         CLEAR(CopyPurchDoc);
//                     end;
//                 }
//                 action("Archi&ve Document")
//                 {
//                     Caption = 'Archi&ve Document';

//                     trigger OnAction()
//                     begin
//                         ArchiveManagement.ArchivePurchDocument(Rec);
//                         CurrPage.UPDATE(FALSE);
//                     end;
//                 }
//                 separator(rec006)
//                 {
//                 }
//                 action("Send A&pproval Request")
//                 {
//                     Caption = 'Send A&pproval Request';
//                     Image = SendApprovalRequest;
//                     Promoted = true;
//                     PromotedIsBig = true;

//                     trigger OnAction()
//                     var
//                         ApprovalMgt: Codeunit "439";
//                     begin
//                         BCSetup.GET;
//                         IF BCSetup.Mandatory THEN BEGIN
//                             IF LinesCommitted THEN
//                                 ERROR('All Lines should be committed');
//                         END;

//                         //IF ApprovalMgt.SendPurchaseApprovalRequest(Rec) THEN;
//                     end;
//                 }
//                 action("Cancel Approval Re&quest")
//                 {
//                     Caption = 'Cancel Approval Re&quest';
//                     Image = CancelledEntries;
//                     Promoted = true;
//                     PromotedIsBig = true;

//                     trigger OnAction()
//                     var
//                         ApprovalMgt: Codeunit "439";
//                     begin
//                         //IF ApprovalMgt.CancelPurchaseApprovalRequest(Rec, TRUE, TRUE) THEN;
//                     end;
//                 }
//                 separator(rec008)
//                 {
//                 }
//                 action("Check Budget Availability")
//                 {
//                     Caption = 'Check Budget Availability';
//                     Image = CheckLedger;
//                     Promoted = true;
//                     PromotedIsBig = true;

//                     trigger OnAction()
//                     var
//                         BCSetup: Record "FIN-Budgetary Control Setup";
//                     begin

//                         BCSetup.GET;
//                         IF NOT BCSetup.Mandatory THEN
//                             EXIT;

//                         IF Status = Status::Released THEN
//                             ERROR('This document has already been released. This functionality is available for open documents only');
//                         IF NOT SomeLinesCommitted THEN BEGIN
//                             IF NOT CONFIRM('Some or All the Lines Are already Committed do you want to continue', TRUE, "Document Type") THEN
//                                 ERROR('Budget Availability Check and Commitment Aborted');
//                             DeleteCommitment.RESET;
//                             DeleteCommitment.SETRANGE(DeleteCommitment."Document Type", DeleteCommitment."Document Type"::LPO);
//                             DeleteCommitment.SETRANGE(DeleteCommitment."Document No.", "No.");
//                             DeleteCommitment.DELETEALL;
//                         END;
//                         Commitment.CheckPurchase(Rec);
//                         MESSAGE('Budget Availability Checking Complete');
//                     end;
//                 }
//                 action("Cancel Budget Commitment")
//                 {
//                     Caption = 'Cancel Budget Commitment';
//                     Image = CancelledEntries;
//                     Promoted = true;
//                     PromotedIsBig = true;

//                     trigger OnAction()
//                     begin
//                         IF NOT CONFIRM('Are you sure you want to Cancel All Commitments Done for this document', TRUE, "Document Type") THEN
//                             ERROR('Budget Availability Check and Commitment Aborted');

//                         DeleteCommitment.RESET;
//                         DeleteCommitment.SETRANGE(DeleteCommitment."Document Type", DeleteCommitment."Document Type"::LPO);
//                         DeleteCommitment.SETRANGE(DeleteCommitment."Document No.", "No.");
//                         DeleteCommitment.DELETEALL;
//                         //Tag all the Purchase Line entries as Uncommitted
//                         PurchLine.RESET;
//                         PurchLine.SETRANGE(PurchLine."Document Type", "Document Type");
//                         PurchLine.SETRANGE(PurchLine."Document No.", "No.");
//                         IF PurchLine.FIND('-') THEN BEGIN
//                             REPEAT
//                                 PurchLine.Committed := FALSE;
//                                 PurchLine.MODIFY;
//                             UNTIL PurchLine.NEXT = 0;
//                         END;

//                         MESSAGE('Commitments Cancelled Successfully for Doc. No %1', "No.");
//                     end;
//                 }
//                 separator(rec009)
//                 {
//                 }
//                 action("Re&lease")
//                 {
//                     Caption = 'Re&lease';
//                     Image = ReleaseDoc;
//                     ShortCutKey = 'Ctrl+F9';

//                     trigger OnAction()
//                     var
//                         ReleasePurchDoc: Codeunit 415;
//                     begin
//                         IF LinesCommitted THEN
//                             ERROR('All Lines should be committed');

//                         ReleasePurchDoc.PerformManualRelease(Rec);
//                     end;
//                 }
//                 action("Re&open")
//                 {
//                     Caption = 'Re&open';
//                     Image = ReOpen;

//                     trigger OnAction()
//                     var
//                         ReleasePurchDoc: Codeunit 415;
//                     begin
//                         IF LinesCommitted THEN
//                             ERROR('All Lines should be committed');

//                         ReleasePurchDoc.PerformManualReopen(Rec);
//                     end;
//                 }
//                 separator(rec011)
//                 {
//                 }
//                 action("&Send BizTalk Rqst. for Purch. Quote")
//                 {
//                     Caption = '&Send BizTalk Rqst. for Purch. Quote';

//                     trigger OnAction()
//                     var
//                         SalesHeader: Record 36;
//                         ApprovalMgt: Codeunit 439;
//                     begin
//                         //IF ApprovalMgt.PrePostApprovalCheck(SalesHeader,Rec) THEN
//                         //  BizTalkManagement.SendReqforPurchQuote(Rec);
//                     end;
//                 }
//             }
//             action("&Print")
//             {
//                 Caption = '&Print';
//                 Ellipsis = true;
//                 Image = Print;
//                 Promoted = true;
//                 PromotedCategory = Process;
//                 PromotedIsBig = true;

//                 trigger OnAction()
//                 begin
//                     BCSetup.GET;
//                     IF BCSetup.Mandatory THEN
//                         IF LinesCommitted THEN
//                             ERROR('All Lines should be committed');

//                     RESET;
//                     SETRANGE("No.", "No.");
//                     REPORT.RUN(51505, TRUE, TRUE, Rec);
//                     RESET;
//                     //DocPrint.PrintPurchHeader(Rec);
//                 end;
//             }
//             action(PurchHistoryBtn)
//             {
//                 Caption = 'Purchase H&istory';
//                 Promoted = true;
//                 PromotedCategory = Process;
//                 Visible = PurchHistoryBtnVisible;

//                 trigger OnAction()
//                 begin
//                     //PurchInfoPaneMgmt.LookupVendPurchaseHistory(Rec,"Pay-to Vendor No.",TRUE);
//                 end;
//             }
//             action(PurchHistoryBtn1)
//             {
//                 Caption = 'Purchase Histor&y';
//                 Promoted = true;
//                 PromotedCategory = Process;
//                 Visible = PurchHistoryBtn1Visible;

//                 trigger OnAction()
//                 begin
//                     //PurchInfoPaneMgmt.LookupVendPurchaseHistory(Rec,"Buy-from Vendor No.",FALSE);
//                 end;
//             }
//             action("&Contacts")
//             {
//                 Caption = '&Contacts';
//                 Promoted = true;
//                 PromotedCategory = Process;

//                 trigger OnAction()
//                 begin
//                     //PurchInfoPaneMgmt.LookupContacts(Rec);
//                 end;
//             }
//             action("Order &Addresses")
//             {
//                 Caption = 'Order &Addresses';
//                 Promoted = true;
//                 PromotedCategory = Process;

//                 trigger OnAction()
//                 begin
//                     //PurchInfoPaneMgmt.LookupOrderAddr(Rec);
//                 end;
//             }
//         }
//     }

//     var
//         PurchSetup: Record 312;
//         CopyPurchDoc: Report 492;
//         DocPrint: Codeunit 229;
//         UserMgt: Codeunit "User Setup Management BR";
//         ArchiveManagement: Codeunit 5063;
//         PurchInfoPaneMgmt: Codeunit 7181;
//         Commitment: Codeunit "Budgetary Control";
//         BCSetup: Record "FIN-Budgetary Control Setup";
//         DeleteCommitment: Record "FIN-Committment";
//         PurchLine: Record 39;
//         [InDataSet]

//         PurchHistoryBtnVisible: Boolean;
//         [InDataSet]
//         PayToCommentPictVisible: Boolean;
//         [InDataSet]
//         PayToCommentBtnVisible: Boolean;
//         [InDataSet]
//         PurchHistoryBtn1Visible: Boolean;
//         [InDataSet]
//         PurchLinesEditable: Boolean;
//         Text19023272: Label 'Buy-from Vendor';
//         Text19005663: Label 'Pay-to Vendor';

//     local procedure ApproveCalcInvDisc()
//     begin
//         //CurrPage.PurchLines.PAGE.ApproveCalcInvDisc;
//     end;

//     local procedure UpdateInfoPanel()
//     var
//         DifferBuyFromPayTo: Boolean;
//     begin
//         DifferBuyFromPayTo := "Buy-from Vendor No." <> "Pay-to Vendor No.";
//         PurchHistoryBtnVisible := DifferBuyFromPayTo;
//         PayToCommentPictVisible := DifferBuyFromPayTo;
//         PayToCommentBtnVisible := DifferBuyFromPayTo;
//         //PurchHistoryBtn1Visible := PurchInfoPaneMgmt.DocExist(Rec,"Buy-from Vendor No.");
//         IF DifferBuyFromPayTo THEN;
//         //PurchHistoryBtnVisible := PurchInfoPaneMgmt.DocExist(Rec, "Pay-to Vendor No.")
//     end;


//     procedure LinesCommitted() Exists: Boolean
//     var
//         PurchLines: Record 39;
//     begin
//         IF BCSetup.GET() THEN BEGIN
//             IF NOT BCSetup.Mandatory THEN BEGIN
//                 Exists := FALSE;
//                 EXIT;
//             END;
//         END ELSE BEGIN
//             Exists := FALSE;
//             EXIT;
//         END;
//         IF BCSetup.GET THEN BEGIN
//             Exists := FALSE;
//             PurchLines.RESET;
//             PurchLines.SETRANGE(PurchLines."Document Type", "Document Type");
//             PurchLines.SETRANGE(PurchLines."Document No.", "No.");
//             PurchLines.SETRANGE(PurchLines.Committed, FALSE);
//             IF PurchLines.FIND('-') THEN
//                 Exists := TRUE;
//         END ELSE
//             Exists := FALSE;
//     end;


//     procedure SomeLinesCommitted() Exists: Boolean
//     var
//         PurchLines: Record 39;
//     begin
//         IF BCSetup.GET THEN BEGIN
//             Exists := FALSE;
//             PurchLines.RESET;
//             PurchLines.SETRANGE(PurchLines."Document Type", "Document Type");
//             PurchLines.SETRANGE(PurchLines."Document No.", "No.");
//             PurchLines.SETRANGE(PurchLines.Committed, TRUE);
//             IF PurchLines.FIND('-') THEN
//                 Exists := TRUE;
//         END ELSE
//             Exists := FALSE;
//     end;


//     procedure UpdateControls()
//     begin
//         IF Status <> Status::Open THEN BEGIN
//             PurchLinesEditable := FALSE;
//         END ELSE
//             PurchLinesEditable := TRUE;
//     end;

//     local procedure ShortcutDimension1CodeOnAfterV()
//     begin
//         //CurrPage.PurchLines.PAGE.UpdateForm(TRUE);
//     end;

//     local procedure ShortcutDimension2CodeOnAfterV()
//     begin
//         //CurrPage.PurchLines.PAGE.UpdateForm(TRUE);
//     end;

//     local procedure CurrencyCodeOnAfterValidate()
//     begin
//         //CurrPage.PurchLines.PAGE.UpdateForm(TRUE);
//     end;

//     local procedure OnAfterGetCurrRecord()
//     begin
//         xRec := Rec;

//         UpdateControls;
//     end;
// }

