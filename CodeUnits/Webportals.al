// dotnet
// {
//     assembly(mscorlib)
//     {
//         type(System.Array; Bytes) { }
//     }
//     assembly(mscorlib)
//     {
//         type(System.Convert; Convert) { }
//     }
//     assembly(mscorlib)
//     {
//         type(System.IO.MemoryStream; MemoryStream) { }
//     }
// }
// codeunit 60999 "Webportals"
// {
//     var
//         EmployeeCard: Record "HRM-Employee (D)";
//         LeaveLE: Record "HRM-Leave Ledger";
//         LeaveT: Record "HRM-Leave Requisition";
//         HRLeave: Record "HRM-Leave Requisition";
//         ltype: Record "HRM-Leave Types";
//         HRSetup: Record "HRM-Setup";
//         HRMEmployeeD: Record "HRM-Employee (D)";
//         TrainingApplication: Record "Training and Development";
//         SupervisorCard: Record "User Setup";
//         ApprovalMgmtFin: Codeunit "Init Code";
//         ApprovalMgmtHr: Codeunit "IntCodeunit";
//         //ApprovalSetup: Record "Approval Setup";
//         PurchaseRN: Record "Purchase Header";
//         PurchaseLines: Record "Purchase Line";
//         ClaimRequisition: Record "FIN-Staff Claims Header";
//         SalaryAdvanceHeader: Record "FIN-Staff Advance Header";
//         SalaryAdvanceLines: Record "FIN-Staff Advance Lines";
//         PRLPeriodTransactions: Record "PRL-Period Transactions";
//         StoreRequisition: Record "PROC-Store Requistion Header";
//         StoreReqLines: Record "PROC-Store Requistion Lines";
//         ImprestRequisition: Record "FIN-Imprest Header";
//         ApproverComments: Record "Approval Comment Line";
//         ImprestReqLines: Record "FIN-Imprest Lines";
//         ClaimReqLines: Record "FIN-Staff Claim Lines";
//         P9: Record "PRL-Employee P9 Info";
//         //RecAccountusers: Record "Online Recruitment users";
//         JobApplications: Record "HRM-Job Applications (B)";
//         ApplicantQualifications: Record "HRM-Applicant Qualifications";
//         NextJobapplicationNo: Code[20];
//         Vendors: Record Vendor;
//         JobQualification: Record "HRM-Job Requirement";
//         QuotationRequestVendors: Record "PROC-Quotation Request Vendors";
//         PurchaseHeader: Record "Purchase Header";
//         dates: Record Date;
//         SDate: Date;
//         EndLeave: Boolean;
//         varDaysApplied: Decimal;
//         fReturnDate: Date;
//         DayCount: Integer;
//         tableNo: Integer;
//         State: Option Open,Pending,Approval,Cancelled,Approved,"Pending Approval";
//         DocType: Option Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order","None","Payment Voucher","Petty Cash",Imprest,Requisition,ImprestSurrender,Interbank,TransportRequest,Maintenance,Fuel,ImporterExporter,"Import Permit","Export Permit",TR,"Safari Notice","Student Applications","Water Research","Consultancy Requests","Consultancy Proposals","Meals Bookings","General Journal","Student Admissions","Staff Claim",KitchenStoreRequisition,"Leave Application","Staff Advance","Staff Advance Accounting";
//         BaseCalendar: Record "Base Calendar Change";
//         ApprovalEntry: Record "Approval Entry";
//         ApprovalEntry_2: Record "Approval Entry";
//         NoSeriesMgt: Codeunit NoSeriesManagement;
//         // AppMgt: Codeunit "Approvals Management-PROC";
//         Approvals: Codeunit "Approval Workflow Setup Mgt.";
//         TXTCorrectDetails: Label 'Login';
//         TXTIncorrectDetails: Label 'Incorrect Username or Password';
//         FILESPATH_S: Label 'C:\inetpub\wwwroot\KNQA_StaffPortal\Downloads\';
//         //FILESPATH_S: Label 'D:\PORTALS\KNQA\KNQAstaff\KNQAstaff\Downloads\';
//         FILESPATH_V: Label 'C:\inetpub\wwwroot\KNQAVendor\Downloads\';
//         FILESPATH_EPROC: Label 'C:\inetpub\wwwroot\KNQA_E-Procurement\Downloads\';
//         Text004: Label 'Approval Setup not found.';
//         TblCustomer: Record Customer;
//         daysInteger: Integer;
//         NextLeaveApplicationNo: Text;
//         NextClaimapplicationNo: text;
//         NextImprestapplicationNo: Text;
//         NextBidApplicationNo: Text;
//         NextStoreqNo: Text;
//         LastNum: Text;
//         SupervisorId: Text;
//         EmployeeUserId: Text;
//         FullNames: Text;
//         Initials: Option;
//         pCode: Code[30];
//         IDNum: Text;
//         Gender: Option;
//         Phone: Code[20];
//         rAddress: Text;
//         Citizenship: Text;
//         County: Text;
//         Mstatus: Option;
//         Eorigin: Text;
//         Disabled: Text;
//         dDetails: Text;
//         DOB: Date;
//         Dlicense: Text;
//         KRA: Text;
//         firstLang: Code[50];
//         secondLang: Code[50];
//         AdditionalLang: Code[50];
//         ApplicantType: Option;
//         pAddress: Text;
//         filename: Text;
//         IStream: InStream;
//         Bytes: DotNet Bytes;
//         Convert: DotNet Convert;
//         MemStream: DotNet MemoryStream;
//         tblBidder: Record "Tender Applicants Registration";
//         tblTenders: Record "Tender Header";
//         tblTenderBids: Record "Tender Submission Header";
//         tblTenderBidFinReq: Record "Tender Bidder Fin Reqs";

//     // Staff Portal Functions
//     procedure CheckStaffLogin(username: Code[20]; userpassword: Text[50]) ReturnMsg: Text[200];
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SetRange(EmployeeCard."No.", username);

//         if (EmployeeCard.Find('-')) then begin
//             if (EmployeeCard.Status = 0) then begin
//                 //if (EmployeeCard.Status = EmployeeCard.Status::Active) then begin
//                 if (EmployeeCard."Changed Password" = true) then begin
//                     if (EmployeeCard."Portal Password" = userpassword) then begin
//                         ReturnMsg := 'SUCCESS' + '::' + Format(EmployeeCard."Changed Password") + '::' + EmployeeCard."No." + '::' + EmployeeCard.FullName();
//                     end else begin
//                         FullNames := EmployeeCard."First Name" + ' ' + EmployeeCard."Middle Name" + ' ' + EmployeeCard."Last Name";
//                         ReturnMsg := 'Invalid Password' + '::' + Format(EmployeeCard."Changed Password") + '::' + EmployeeCard."No." + '::' + FullNames;
//                     end
//                 end else begin
//                     if (EmployeeCard."Portal Password" = userpassword) then begin
//                         ReturnMsg := 'SUCCESS' + '::' + Format(EmployeeCard."Changed Password") + '::' + EmployeeCard."No." + '::' + FullNames;
//                     end else begin
//                         ReturnMsg := 'Invalid Password' + '::' + Format(EmployeeCard."Changed Password");
//                     end
//                 end
//             end else begin
//                 ReturnMsg := 'Your Account Status Is Inactive. Please Contact Administrator.' + '::';
//             end
//         end else begin
//             ReturnMsg := 'Invalid Staff Number' + '::';
//         end

//     end;

//     procedure CheckStaffLoginForUnchangedPass(Username: Code[20]; password: Text[50]) ReturnMsg: Text[200];
//     begin
//         EmployeeCard.Reset();

//         EmployeeCard.SetRange(EmployeeCard."No.", Username);
//         EmployeeCard.SetRange(EmployeeCard."Portal Password", password);

//         if (EmployeeCard.Find('-')) then begin
//             if (EmployeeCard.Status = 0) then begin
//                 ReturnMsg := 'SUCCESS' + '::' + EmployeeCard."No." + '::' + EmployeeCard."Company E-Mail";
//             end else begin
//                 ReturnMsg := 'Your Account Status Is Inactive. Please Contact Administrator.' + '::';
//             end

//         end
//         else begin
//             ReturnMsg := 'Invalid Password' + '::'
//         end

//     end;

//     procedure UpdateStaffPass(username: Code[30]; genpass: Text) ReturnMsg: Text[200];
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);
//         IF EmployeeCard.FIND('-') THEN BEGIN
//             EmployeeCard."Portal Password" := genpass;
//             EmployeeCard."Changed Password" := TRUE;
//             EmployeeCard.Modify();
//             ReturnMsg := 'SUCCESS' + '::';
//         END
//     end;

//     procedure VerifyCurrentPassword(username: Code[20]; oldpass: Text[100]) ReturnMsg: Text[200];
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SetRange(EmployeeCard."No.", username);
//         EmployeeCard.SetRange(EmployeeCard."Portal Password", oldpass);

//         if (EmployeeCard.Find('-')) then begin
//             ReturnMsg := 'SUCCESS' + '::';
//         end
//     end;

//     procedure ChangeStaffPassword(username: Code[30]; password: Text) ReturnMsg: Text[200];
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);
//         IF EmployeeCard.FIND('-') THEN BEGIN
//             EmployeeCard."Portal Password" := password;
//             EmployeeCard."Changed Password" := TRUE;
//             EmployeeCard.Modify();
//             ReturnMsg := 'SUCCESS' + '::';
//         END;
//     end;

//     procedure CheckStaffPasswordChanged(username: Code[30]) Message: Text
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);
//         IF EmployeeCard.FIND('-') THEN BEGIN
//             IF (EmployeeCard."Changed Password" = TRUE) THEN BEGIN
//                 Message := 'SUCCESS' + '::' + FORMAT(EmployeeCard."Changed Password");
//             END ELSE BEGIN
//                 Message := 'FAILED' + '::' + FORMAT(EmployeeCard."Changed Password");
//             END
//         END ELSE BEGIN
//             Message := 'FAILED' + '::';
//         END
//     end;

//     procedure CheckValidStaffNo(username: Code[30]) Message: Text
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);
//         IF EmployeeCard.FIND('-') THEN BEGIN
//             Message := 'SUCCESS' + '::';
//         END ELSE BEGIN
//             Message := 'FAILED' + '::';
//         END
//     end;

//     procedure GetStaffProfileDetails(username: Code[30]) Message: Text
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);
//         IF EmployeeCard.FIND('-') THEN BEGIN
//             Message := EmployeeCard."ID Number" + '::' + EmployeeCard.Citizenship + '::' + EmployeeCard."Postal Address" + '::' +
//   EmployeeCard."Job Title" + '::' + EmployeeCard."Company E-Mail" + '::' + FORMAT(EmployeeCard.Title) + '::' + FORMAT(EmployeeCard."Date Of Birth") + '::' + FORMAT(EmployeeCard.Gender) + '::' + EmployeeCard."Cellular Phone Number" + '::' + FORMAT(EmployeeCard.Title);

//         END
//     end;

//     procedure GetStaffMail(username: Code[30]) Message: Text
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);
//         IF EmployeeCard.FIND('-') THEN BEGIN
//             Message := EmployeeCard."Company E-Mail" + '::';
//         END
//     end;

//     procedure GetProfilePicture(StaffNo: Text) BaseImage: Text
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", StaffNo);

//         IF EmployeeCard.FIND('-') THEN BEGIN
//             IF EmployeeCard.Picture.HASVALUE THEN BEGIN
//                 // EmployeeCard.CALCFIELDS(Picture);
//                 // EmployeeCard.Picture.CREATEINSTREAM(IStream);
//                 // MemoryStream := MemoryStream.MemoryStream();
//                 // COPYSTREAM(MemoryStream, IStream);
//                 // Bytes := MemoryStream.GetBuffer();
//                 // BaseImage := Convert.ToBase64String(Bytes);
//             END;
//         END;
//     end;

//     procedure GetCurrentPassword(username: Code[30]) Message: Text
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);
//         IF EmployeeCard.FIND('-') THEN BEGIN
//             Message := EmployeeCard."Portal Password" + '::';
//         END
//     end;

//     procedure GenerateLeaveStatement(StaffNo: Text; filenameFromApp: Text)
//     begin
//         filename := FILESPATH_S + filenameFromApp;
//         IF EXISTS(filename) THEN
//             ERASE(filename);
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", StaffNo);

//         IF EmployeeCard.FIND('-') THEN BEGIN
//             REPORT.SAVEASPDF(51176, filename, EmployeeCard);
//         END
//     end;

//     procedure GetStaffDetails(username: Code[30]) Message: Text
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);
//         IF EmployeeCard.FIND('-') THEN BEGIN
//             Message := EmployeeCard."ID Number" + '::' + EmployeeCard.Citizenship + '::' + EmployeeCard."Postal Address" + '::' +
//   EmployeeCard."Job Title" + '::' + EmployeeCard."Company E-Mail" + '::' + FORMAT(EmployeeCard.Title) + '::' + FORMAT(EmployeeCard."Date Of Birth");

//         END
//     end;

//     procedure GetStaffGender(username: Code[30]) Message: Text
//     begin
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);
//         IF EmployeeCard.FIND('-') THEN BEGIN
//             Message := FORMAT(EmployeeCard.Gender) + '::' + EmployeeCard."Cellular Phone Number";

//         END
//     end;

//     procedure GeneratePaySlipReport(EmployeeNo: Text; Period: Date; filenameFromApp: Text) filename: Text[100]
//     begin
//         filename := FILESPATH_S + filenameFromApp;
//         IF EXISTS(filename) THEN
//             ERASE(filename);
//         //MESSAGE('OK');
//         PRLPeriodTransactions.RESET;
//         PRLPeriodTransactions.SETRANGE(PRLPeriodTransactions."Employee Code", EmployeeNo);
//         PRLPeriodTransactions.SETRANGE(PRLPeriodTransactions."Payroll Period", Period);

//         IF PRLPeriodTransactions.FIND('-') THEN BEGIN
//             // REPORT.SAVEASPDF(51735, filename, PRLPeriodTransactions);
//             REPORT.SAVEASPDF(Report::"PRL-Payslips V 1.1.1", filename, PRLPeriodTransactions);
//         END;
//         EXIT(filename);
//     end;

//     procedure Generatep9Report(SelectedPeriod: Integer; EmployeeNo: Text; filenameFromApp: Text) filename: Text[100]
//     begin
//         filename := FILESPATH_S + filenameFromApp;
//         IF EXISTS(filename) THEN
//             ERASE(filename);
//         //MESSAGE('OK');
//         P9.Reset();
//         P9.SETRANGE(P9."Period Year", SelectedPeriod);
//         P9.SETRANGE(P9."Employee Code", EmployeeNo);

//         IF P9.FIND('-') THEN BEGIN
//             REPORT.SAVEASPDF(51746, filename, P9);
//         END;
//         EXIT(filename);
//     end;

//     procedure ApproveDocument(DocumentNo: Text; ApproverID: Text)
//     var
//     //  ApprovalEntryProc: Record "Approval Entry-proc";
//     begin
//         // ApprovalEntryProc.SETRANGE(ApprovalEntryProc."Document No.", DocumentNo);
//         // ApprovalEntryProc.SETRANGE(ApprovalEntryProc."Approver ID", ApproverID);

//         // IF ApprovalEntryProc.FIND('-') THEN BEGIN

//         //     REPEAT
//         //         IF NOT ApprovalSetup.GET THEN
//         //             ERROR(Text004);

//         //         AppMgt.ApproveApprovalRequest(ApprovalEntryProc);

//         //     UNTIL ApprovalEntryProc.NEXT = 0;
//         // END
//     end;

//     procedure RejectDocument(DocumentNo: Text; ApproverID: Text)
//     var
//     // ApprovalEntryProc: Record "Approval Entry-proc";
//     begin
//         // ApprovalEntryProc.SETRANGE(ApprovalEntryProc."Document No.", DocumentNo);
//         // ApprovalEntryProc.SETRANGE(ApprovalEntryProc."Approver ID", ApproverID);

//         // IF ApprovalEntryProc.FIND('-') THEN
//         //     REPEAT
//         //         IF NOT ApprovalSetup.GET THEN
//         //             ERROR(Text004);

//         //         AppMgt.RejectApprovalRequest(ApprovalEntryProc);

//         //     UNTIL ApprovalEntryProc.NEXT = 0;
//     end;

//     procedure CancelDocument(DocumentNo: Text; SenderID: Text)
//     begin
//         ApprovalEntry.SETRANGE(ApprovalEntry."Document No.", DocumentNo);
//         ApprovalEntry.SETRANGE(ApprovalEntry."Sender ID", SenderID);

//         IF ApprovalEntry.FIND('-') THEN
//             REPEAT
//             //AppMgt.CancelApproval(ApprovalEntry);
//             UNTIL ApprovalEntry.NEXT = 0;
//     end;

//     procedure CancelApprovalRequest(ReqNo: Text)
//     begin
//         ApprovalEntry.Reset();
//         ApprovalEntry.SETRANGE(ApprovalEntry."Document No.", ReqNo);
//         IF ApprovalEntry.FIND('-') THEN BEGIN
//             ApprovalEntry.DELETE;
//             PurchaseRN.Reset();
//             PurchaseRN.SETRANGE(PurchaseRN."No.", ReqNo);
//             IF PurchaseRN.FIND('-') THEN BEGIN
//                 PurchaseRN.Status := PurchaseRN.Status::Open;
//                 PurchaseRN.Modify();
//             END;
//         END;
//     end;

//     procedure AvailableLeaveDays(EmployeeNo: Text; LeaveType: Text) availabledays: Text
//     begin
//         CLEAR(availabledays);
//         CLEAR(daysInteger);
//         LeaveLE.Reset();
//         LeaveLE.SETRANGE(LeaveLE."Employee No", EmployeeNo);
//         //LeaveLE.SETRANGE(LeaveLE."Leave Type",LeaveType);
//         //LeaveLE.SETRANGE(LeaveLE."Leave Period",Year);
//         IF LeaveLE.FIND('-') THEN
//             REPEAT
//             BEGIN
//                 daysInteger := daysInteger + LeaveLE."No. of Days"
//                 // availabledays:=FORMAT(LeaveLE."No. of Days");
//             END;
//             UNTIL LeaveLE.NEXT = 0;
//         availabledays := FORMAT(daysInteger);
//     end;

//     procedure HRLeaveApplication(EmployeeNo: Text; LeaveType: Text; AppliedDays: Decimal; StartDate: Date; EndDate: Date; ReturnDate: Date; SenderComments: Text; Reliever: Text; RelieverName: Text; rCentre: Text) successMessage: Text
//     begin
//         LeaveT.INIT;
//         HRSetup.GET;
//         NextLeaveApplicationNo := NoSeriesMgt.GetNextNo('LEAVE', 0D, TRUE);
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", EmployeeNo);

//         IF EmployeeCard.FIND('-')
//         THEN BEGIN
//             LeaveT."User ID" := EmployeeCard."User ID";
//             EmployeeUserId := EmployeeCard."User ID";
//             LeaveT."Employee No" := EmployeeNo;
//             LeaveT."Employee Name" := EmployeeCard.FullName;
//             SupervisorCard.Reset();
//             SupervisorCard.SETRANGE(SupervisorCard."User ID", EmployeeCard."User ID");
//             IF SupervisorCard.FIND('-')
//             THEN BEGIN
//                 SupervisorId := SupervisorCard."Approver ID";
//             END;
//         END;
//         LeaveT."Reliever No." := Reliever;
//         LeaveT."Reliever Name" := RelieverName;
//         LeaveT."No." := NextLeaveApplicationNo;
//         LeaveT."Leave Type" := LeaveType;
//         LeaveT.VALIDATE("Leave Type");
//         LeaveT."Applied Days" := AppliedDays;
//         LeaveT.Date := TODAY;
//         LeaveT."Starting Date" := StartDate;
//         LeaveT."End Date" := EndDate;
//         LeaveT."Return Date" := ReturnDate;
//         LeaveT.Purpose := SenderComments;
//         LeaveT."No. Series" := 'LEAVE';
//         LeaveT.Status := HRLeave.Status::Open;
//         LeaveT."Responsibility Center" := rCentre;
//         LeaveT.INSERT;
//         //send request for approval
//         LeaveT.Reset();
//         LeaveT.SETRANGE(LeaveT."No.", NextLeaveApplicationNo);
//         IF LeaveT.FIND('-')
//         THEN BEGIN
//             //ApprovalMgmtHr.OnSendLeavesforApproval(LeaveT);
//         end
//     end;

//     procedure HRCancelLeaveApplication(LeaveApplicationNo: Text)
//     begin
//         LeaveT.Reset();
//         LeaveT.SETRANGE(LeaveT."No.", LeaveApplicationNo);

//         IF LeaveT.FIND('-') THEN BEGIN
//             // ApprovalMgmtHr.OnCancelLeaveApplicationForApproval(LeaveT);
//         END;


//         ApprovalEntry.Reset();
//         ApprovalEntry.SETRANGE(ApprovalEntry."Document No.", LeaveApplicationNo);

//         IF ApprovalEntry.FIND('-') THEN BEGIN
//             REPEAT
//                 ApprovalEntry.Status := ApprovalEntry_2.Status::Canceled;
//                 ApprovalEntry.Modify();
//             UNTIL ApprovalEntry.NEXT = 0
//         END;
//     end;



//     procedure CalcReturnDate(EndDate: Date; "Leave Type": Text) RDate: Date
//     begin
//         IF ltype.GET("Leave Type") THEN BEGIN
//         END;
//         RDate := EndDate + 1;
//         WHILE DetermineIfIsNonWorking(RDate, "Leave Type") = TRUE DO BEGIN
//             RDate := RDate + 1;
//         END;
//     end;

//     procedure ValidateStartDate("Starting Date": Date)
//     begin
//         dates.Reset();
//         dates.SETRANGE(dates."Period Start", "Starting Date");
//         dates.SETFILTER(dates."Period Type", '=%1', dates."Period Type"::Date);
//         IF dates.FIND('-') THEN
//             IF ((dates."Period Name" = 'Sunday') OR (dates."Period Name" = 'Saturday')) THEN BEGIN
//                 IF (dates."Period Name" = 'Sunday') THEN
//                     ERROR('You can not start your leave on a Sunday')
//                 ELSE
//                     IF (dates."Period Name" = 'Saturday') THEN ERROR('You can not start your leave on a Saturday')
//             END;

//         BaseCalendar.Reset();
//         BaseCalendar.SETFILTER(BaseCalendar."Base Calendar Code", HRSetup."Base Calendar");
//         BaseCalendar.SETRANGE(BaseCalendar.Date, "Starting Date");
//         IF BaseCalendar.FIND('-') THEN BEGIN
//             REPEAT
//                 IF BaseCalendar.Nonworking = TRUE THEN BEGIN
//                     IF BaseCalendar.Description <> '' THEN
//                         ERROR('You can not start your Leave on a Holiday - ''' + BaseCalendar.Description + '''')
//                     ELSE
//                         ERROR('You can not start your Leave on a Holiday');
//                 END;
//             UNTIL BaseCalendar.NEXT = 0;
//         END;

//         // For Annual Holidays
//         BaseCalendar.Reset();
//         BaseCalendar.SETFILTER(BaseCalendar."Base Calendar Code", HRSetup."Base Calendar");
//         BaseCalendar.SETRANGE(BaseCalendar."Recurring System", BaseCalendar."Recurring System"::"Annual Recurring");
//         IF BaseCalendar.FIND('-') THEN BEGIN
//             REPEAT
//                 IF ((DATE2DMY("Starting Date", 1) = BaseCalendar."Date Day") AND (DATE2DMY("Starting Date", 2) = BaseCalendar."Date Month")) THEN BEGIN
//                     IF BaseCalendar.Nonworking = TRUE THEN BEGIN
//                         IF BaseCalendar.Description <> '' THEN
//                             ERROR('You can not start your Leave on a Holiday - ''' + BaseCalendar.Description + '''')
//                         ELSE
//                             ERROR('You can not start your Leave on a Holiday');
//                     END;
//                 END;
//             UNTIL BaseCalendar.NEXT = 0;
//         END;
//     end;

//     procedure CalcEndDate(SDate: Date; LDays: Integer; "Leave Type": Text) LEndDate: Date
//     begin
//         SDate := SDate;
//         EndLeave := FALSE;
//         DayCount := 1;
//         WHILE EndLeave = FALSE DO BEGIN
//             IF NOT DetermineIfIsNonWorking(SDate, "Leave Type") THEN
//                 DayCount := DayCount + 1;
//             SDate := SDate + 1;
//             IF DayCount > LDays THEN
//                 EndLeave := TRUE;
//         END;
//         LEndDate := SDate - 1;

//         WHILE DetermineIfIsNonWorking(LEndDate, "Leave Type") = TRUE DO BEGIN
//             LEndDate := LEndDate + 1;
//         END;
//     end;

//     procedure DetermineIfIsNonWorking(VAR bcDate: Date; VAR "Leave Type": Text) ItsNonWorking: Boolean
//     begin
//         CLEAR(ItsNonWorking);
//         HRSetup.FIND('-');
//         //One off Hollidays like Good Friday
//         BaseCalendar.Reset();
//         BaseCalendar.SETFILTER(BaseCalendar."Base Calendar Code", HRSetup."Base Calendar");
//         BaseCalendar.SETRANGE(BaseCalendar.Date, bcDate);
//         IF BaseCalendar.FIND('-') THEN BEGIN
//             IF BaseCalendar.Nonworking = TRUE THEN
//                 ItsNonWorking := TRUE;
//         END;

//         // For Annual Holidays
//         BaseCalendar.Reset();
//         BaseCalendar.SETFILTER(BaseCalendar."Base Calendar Code", HRSetup."Base Calendar");
//         BaseCalendar.SETRANGE(BaseCalendar."Recurring System", BaseCalendar."Recurring System"::"Annual Recurring");
//         IF BaseCalendar.FIND('-') THEN BEGIN
//             REPEAT
//                 IF ((DATE2DMY(bcDate, 1) = BaseCalendar."Date Day") AND (DATE2DMY(bcDate, 2) = BaseCalendar."Date Month")) THEN BEGIN
//                     IF BaseCalendar.Nonworking = TRUE THEN
//                         ItsNonWorking := TRUE;
//                 END;
//             UNTIL BaseCalendar.NEXT = 0;
//         END;
//         IF ItsNonWorking = FALSE THEN BEGIN
//             // Check if its a weekend
//             dates.Reset();
//             dates.SETRANGE(dates."Period Type", dates."Period Type"::Date);
//             dates.SETRANGE(dates."Period Start", bcDate);
//             IF dates.FIND('-') THEN BEGIN
//                 //if date is a sunday
//                 IF dates."Period Name" = 'Sunday' THEN BEGIN
//                     //check if Leave includes sunday
//                     ltype.Reset();
//                     ltype.SETRANGE(ltype.Code, "Leave Type");
//                     IF ltype.FIND('-') THEN BEGIN
//                         IF ltype."Inclusive of Sunday" = FALSE THEN ItsNonWorking := TRUE;
//                     END;
//                 END ELSE
//                     IF dates."Period Name" = 'Saturday' THEN BEGIN
//                         //check if Leave includes sato
//                         ltype.Reset();
//                         ltype.SETRANGE(ltype.Code, "Leave Type");
//                         IF ltype.FIND('-') THEN BEGIN
//                             IF ltype."Inclusive of Saturday" = FALSE THEN ItsNonWorking := TRUE;
//                         END;
//                     END;

//             END;
//         END;
//     end;

//     procedure DetermineLeaveReturnDate(fBeginDate: Date; fDays: Decimal; "Leave Type": Text) fReturnDate: Date
//     begin
//         ltype.Reset();
//         IF ltype.GET("Leave Type") THEN BEGIN
//         END;
//         varDaysApplied := fDays;
//         fReturnDate := fBeginDate;
//         REPEAT
//             IF DetermineIfIncludesNonWorking("Leave Type") = FALSE THEN BEGIN
//                 fReturnDate := CALCDATE('1D', fReturnDate);
//                 IF DetermineIfIsNonWorking(fReturnDate, "Leave Type") THEN BEGIN
//                     varDaysApplied := varDaysApplied + 1;
//                 END ELSE
//                     varDaysApplied := varDaysApplied;
//                 varDaysApplied := varDaysApplied + 1
//             END
//             ELSE BEGIN
//                 fReturnDate := CALCDATE('1D', fReturnDate);
//                 varDaysApplied := varDaysApplied - 1;
//             END;
//         UNTIL varDaysApplied = 0;
//         EXIT(fReturnDate);
//     end;

//     procedure DetermineIfIncludesNonWorking(VAR fLeaveCode: Text): Boolean
//     begin
//         IF ltype.GET(fLeaveCode) THEN BEGIN
//             IF ltype."Inclusive of Non Working Days" = TRUE THEN
//                 EXIT(TRUE);
//         END;
//     end;

//     procedure GetApprovalStatus(DocumentNo: Text) Message: Text
//     begin
//         ApprovalEntry.Reset();
//         ApprovalEntry.SETRANGE(ApprovalEntry."Document No.", DocumentNo);
//         IF ApprovalEntry.FIND('-') THEN BEGIN
//             Message := FORMAT(ApprovalEntry.Status);
//         END
//     end;

//     procedure CreateTrainingRequisition(EmployeeNo: Text; LeaveType: Text; AppliedDays: Decimal; StartDate: Date; EndDate: Date; ReturnDate: Date; SenderComments: Text; Reliever: Text; RelieverName: Text; rCentre: Text) successMessage: Text
//     begin
//         TrainingApplication.INIT;
//         NextLeaveApplicationNo := NoSeriesMgt.GetNextNo('TRAINPROJ', 0D, TRUE);
//         TrainingApplication.Reset();
//         //TrainingApplication.SETRANGE(TrainingApplication."No.", EmployeeNo);

//         IF EmployeeCard.FIND('-')
//         THEN BEGIN
//             LeaveT."User ID" := EmployeeCard."User ID";
//             EmployeeUserId := EmployeeCard."User ID";
//             LeaveT."Employee No" := EmployeeNo;
//             LeaveT."Employee Name" := EmployeeCard.FullName;
//             SupervisorCard.Reset();
//             SupervisorCard.SETRANGE(SupervisorCard."User ID", EmployeeCard."User ID");
//             IF SupervisorCard.FIND('-')
//             THEN BEGIN
//                 SupervisorId := SupervisorCard."Approver ID";
//             END;
//         END;
//         LeaveT."Reliever No." := Reliever;
//         LeaveT."Reliever Name" := RelieverName;
//         LeaveT."No." := NextLeaveApplicationNo;
//         LeaveT."Leave Type" := LeaveType;
//         LeaveT.VALIDATE("Leave Type");
//         LeaveT."Applied Days" := AppliedDays;
//         LeaveT.Date := TODAY;
//         LeaveT."Starting Date" := StartDate;
//         LeaveT."End Date" := EndDate;
//         LeaveT."Return Date" := ReturnDate;
//         LeaveT.Purpose := SenderComments;
//         LeaveT."No. Series" := 'TRAINPROJ';
//         LeaveT.Status := HRLeave.Status::Open;
//         LeaveT."Responsibility Center" := rCentre;
//         LeaveT.INSERT;
//         //send request for approval
//         LeaveT.Reset();
//         LeaveT.SETRANGE(LeaveT."No.", NextLeaveApplicationNo);
//         IF LeaveT.FIND('-')
//         THEN BEGIN
//             //ApprovalMgmtHr.OnSendLeavesforApproval(LeaveT);
//         end
//     end;

//     procedure SalaryAdvanceCreate(Campusz: Code[30]; Departmentz: Code[30]; CampusName: Text; DeptName: Text; Rcentre: Code[30]; username: Code[30]; Reason: Text) LastNum: Text
//     begin
//         SalaryAdvanceHeader.INIT;
//         NextClaimapplicationNo := NoSeriesMgt.GetNextNo('STAFFADV', 0D, TRUE);
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);

//         IF EmployeeCard.FIND('-')
//         THEN BEGIN
//             SalaryAdvanceHeader."No." := NextClaimapplicationNo;
//             SalaryAdvanceHeader.Date := TODAY;
//             //SalaryAdvanceHeader.Payee := EmployeeCard.Names;
//             //SalaryAdvanceHeader."On Behalf Of" := EmployeeCard.Names;
//             SalaryAdvanceHeader.Posted := FALSE;
//             SalaryAdvanceHeader."Global Dimension 1 Code" := Campusz;
//             SalaryAdvanceHeader.Status := SalaryAdvanceHeader.Status::Pending;
//             //SalaryAdvanceHeader."Payment Type" := SalaryAdvanceHeader."Payment Type"::Imprest;
//             SalaryAdvanceHeader."Shortcut Dimension 2 Code" := Departmentz;
//             SalaryAdvanceHeader."Function Name" := CampusName;
//             SalaryAdvanceHeader."Budget Center Name" := DeptName;
//             SalaryAdvanceHeader."No. Series" := 'STAFFADV';
//             SalaryAdvanceHeader."Responsibility Center" := Rcentre;
//             SalaryAdvanceHeader."Account No." := username;
//             SalaryAdvanceHeader.Purpose := Reason;
//             SalaryAdvanceHeader.Cashier := username;
//             SalaryAdvanceHeader.INSERT;
//             LastNum := NextClaimapplicationNo;
//         END;
//     end;

//     procedure InsertSalaryAdvanceLines(ReqNo: Code[20]; Atypes: Code[50]; AccNo: Code[50]; AccName: Code[50]; Amount: Decimal; UserId: Code[50]) rtnMsg: Text
//     begin
//         SalaryAdvanceHeader.Reset();
//         SalaryAdvanceHeader.SetRange("No.", ReqNo);

//         if SalaryAdvanceHeader.Find('-') then begin
//             SalaryAdvanceLines.Init();
//             SalaryAdvanceLines.No := ReqNo;
//             SalaryAdvanceLines."Advance Type" := Atypes;
//             SalaryAdvanceLines."Shortcut Dimension 2 Code" := SalaryAdvanceHeader."Shortcut Dimension 2 Code";
//             SalaryAdvanceLines."Account No:" := AccNo;
//             SalaryAdvanceLines."Account Name" := AccName;
//             SalaryAdvanceLines.Amount := Amount;
//             SalaryAdvanceLines."Due Date" := SalaryAdvanceHeader.Date;
//             //SalaryAdvanceLines."Imprest Holder" := UserId;
//             SalaryAdvanceLines."Global Dimension 1 Code" := SalaryAdvanceHeader."Global Dimension 1 Code";
//             SalaryAdvanceLines.Purpose := SalaryAdvanceHeader.Purpose;
//             SalaryAdvanceLines."Amount LCY" := Amount;

//             SalaryAdvanceLines.Insert();

//             rtnMsg := 'SUCCESS' + '::';
//         end;
//     end;

//     procedure SalaryAdvanceApprovalRequest(ReqNo: Text)
//     begin
//         SalaryAdvanceHeader.Reset();
//         SalaryAdvanceHeader.SETRANGE(SalaryAdvanceHeader."No.", ReqNo);
//         IF SalaryAdvanceHeader.FIND('-')
//         THEN BEGIN
//             // ApprovalMgmtFin.OnSendAdvanceforApproval(SalaryAdvanceHeader);
//         END;
//     end;

//     procedure SalaryAdvanceRequisition(ReqNo: Text)
//     begin
//         SalaryAdvanceHeader.Reset();
//         SalaryAdvanceHeader.SETRANGE(SalaryAdvanceHeader."No.", ReqNo);
//         IF SalaryAdvanceHeader.FIND('-')
//         THEN BEGIN
//             // ApprovalMgmtFin.OnCancelStaffClaimForApproval(SalaryAdvanceHeader);
//         END;
//     end;

//     procedure PurchaseHeaderCreate(BusinessCode: Code[50]; DepartmentCode: Code[50]; ResponsibilityCentre: Code[50]; UserID: Text; Purpose: Text)
//     begin
//         NextLeaveApplicationNo := NoSeriesMgt.GetNextNo('PUR REQ', 0D, TRUE);
//         PurchaseRN.INIT;
//         PurchaseRN."No." := NextLeaveApplicationNo;
//         PurchaseRN."Document Type" := PurchaseRN."Document Type"::Quote;
//         PurchaseRN.Department := DepartmentCode;
//         PurchaseRN."Buy-from Vendor No." := 'DEPART';
//         PurchaseRN."Pay-to Vendor No." := 'DEPART';
//         PurchaseRN."Invoice Disc. Code" := 'DEPART';
//         PurchaseRN."Shortcut Dimension 1 Code" := BusinessCode;
//         PurchaseRN."Shortcut Dimension 2 Code" := DepartmentCode;
//         PurchaseRN."Responsibility Center" := ResponsibilityCentre;
//         PurchaseRN."Assigned User ID" := UserID;
//         PurchaseRN."Order Date" := TODAY;
//         PurchaseRN."Due Date" := TODAY;
//         PurchaseRN."Expected Receipt Date" := TODAY;
//         PurchaseRN."Posting Description" := Purpose;
//         PurchaseRN.INSERT;
//     end;

//     procedure SubmitPurchaseLine(DocumentType: Integer; DocumentNo: Text; FunctionNo: Code[50]; LocationID: Text; ExpectedDate: Date; FunctionDesc: Text; UnitsOfMeasure: Text; Quantityz: Decimal)
//     begin
//         PurchaseLines.INIT;
//         PurchaseLines."Document Type" := PurchaseLines."Document Type"::Quote;
//         PurchaseLines."Document No." := DocumentNo;
//         PurchaseLines."Line No." := PurchaseLines.COUNT + 1;
//         PurchaseLines."No." := FunctionNo;
//         PurchaseLines."Location Code" := LocationID;
//         PurchaseLines."Expected Receipt Date" := ExpectedDate;
//         PurchaseLines.Description := FunctionDesc;
//         PurchaseLines."Unit of Measure" := UnitsOfMeasure;
//         PurchaseLines.Quantity := Quantityz;
//         PurchaseLines.INSERT;
//     end;

//     procedure GetLastPRNNo(username: Code[30]) Message: Text
//     begin
//         PurchaseRN.Reset();
//         PurchaseRN.SETRANGE(PurchaseRN."Assigned User ID", username);
//         IF PurchaseRN.FIND('+') THEN BEGIN
//             Message := PurchaseRN."No.";
//         END
//     end;

//     procedure GetPRNHeaderDetails(PurchaseNo: Text) Message: Text
//     begin
//         PurchaseRN.Reset();
//         PurchaseRN.SETRANGE(PurchaseRN."No.", PurchaseNo);
//         IF PurchaseRN.FIND('-') THEN BEGIN
//             Message := FORMAT(PurchaseRN."Expected Receipt Date");
//         END
//     end;

//     procedure PRNApprovalRequest(ReqNo: Text)
//     begin
//         PurchaseRN.Reset();
//         PurchaseRN.SETRANGE(PurchaseRN."No.", ReqNo);
//         IF PurchaseRN.FIND('-')
//         THEN BEGIN
//             //ApprovalMgmtFin.OnSendPurchQuoteforApproval(PurchaseRN);
//         END;
//     end;

//     procedure CancelPrnApprovalRequest(ReqNo: Text)
//     begin
//         PurchaseRN.Reset();
//         PurchaseRN.SETRANGE(PurchaseRN."No.", ReqNo);
//         IF PurchaseRN.FIND('-')
//         THEN BEGIN
//             //  ApprovalMgmtExt.OnCancelPurchaseRequisitionForApproval(PurchaseRN);
//         END;
//     end;

//     procedure RemoveStoreReqLine(LineNo: Integer)
//     begin
//         StoreReqLines.Reset();
//         StoreReqLines.SETRANGE(StoreReqLines."Line No.", LineNo);
//         IF StoreReqLines.FIND('-') THEN BEGIN
//             StoreReqLines.DELETE;
//             MESSAGE('Line Deleted Successfully');
//         END;
//     end;

//     procedure RemoveImprestReqLine(ReqNo: Code[20]; AdvanceType: Code[20])
//     begin
//         ImprestReqLines.Reset();
//         ImprestReqLines.SETRANGE(ImprestReqLines.No, ReqNo);
//         ImprestReqLines.SETRANGE(ImprestReqLines."Advance Type", AdvanceType);
//         IF ImprestReqLines.FIND('-') THEN BEGIN
//             ImprestReqLines.DELETE;
//             MESSAGE('Line Deleted Successfully');
//         END;
//     end;

//     procedure RemoveClaimReqLine(ReqNo: Code[20]; AdvanceType: Code[20])
//     begin
//         ClaimReqLines.Reset();
//         ClaimReqLines.SETRANGE(ClaimReqLines.No, ReqNo);
//         ClaimReqLines.SETRANGE(ClaimReqLines."Advance Type", AdvanceType);
//         IF ClaimReqLines.FIND('-') THEN BEGIN
//             ClaimReqLines.DELETE;
//             MESSAGE('Line Deleted Successfully');
//         END;
//     end;

//     procedure RemovePurchaseLine(LineNo: Integer)
//     begin
//         PurchaseLines.Reset();
//         PurchaseLines.SETRANGE(PurchaseLines."Line No.", LineNo);
//         IF PurchaseLines.FIND('-') THEN BEGIN
//             PurchaseLines.DELETE;
//             MESSAGE('Line Deleted Successfully');
//         END;
//     end;

//     procedure RemoveSalaryAdvanceLine(ReqNo: Code[20]; AdvanceType: Code[20])
//     begin
//         SalaryAdvanceLines.Reset();
//         SalaryAdvanceLines.SETRANGE(SalaryAdvanceLines.No, ReqNo);
//         SalaryAdvanceLines.SETRANGE(SalaryAdvanceLines."Advance Type", AdvanceType);
//         IF SalaryAdvanceLines.FIND('-') THEN BEGIN
//             SalaryAdvanceLines.DELETE;
//             MESSAGE('Line Deleted Successfully');
//         END;
//     end;

//     procedure RemoveJobQualiReqLine(QualCode: Code[20]; AppNo: Code[20]) rtnMsg: Text
//     begin
//         ApplicantQualifications.Reset();

//         ApplicantQualifications.SetRange("Application No", AppNo);
//         ApplicantQualifications.SetRange("Qualification Code", QualCode);

//         if ApplicantQualifications.Find('-') then begin
//             ApplicantQualifications.DELETE;
//             rtnMsg := 'Qualification Deleted Successfully';
//         END;
//     end;

//     procedure ClaimRequisitionCreate(Campusz: Code[30]; Departmentz: Code[30]; CampusName: Text; DeptName: Text; Rcentre: Code[30]; username: Code[30]; Reason: Text) LastNum: Text
//     begin
//         ClaimRequisition.INIT;
//         NextClaimapplicationNo := NoSeriesMgt.GetNextNo('S_CLAIMS', 0D, TRUE);
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);

//         IF EmployeeCard.FIND('-')
//         THEN BEGIN
//             ClaimRequisition."No." := NextClaimapplicationNo;
//             ClaimRequisition.Date := TODAY;
//             // ClaimRequisition.Payee := EmployeeCard.Names;
//             ClaimRequisition.Payee := EmployeeCard.FullName();
//             //ClaimRequisition."On Behalf Of" := EmployeeCard.Names;
//             ClaimRequisition."On Behalf Of" := EmployeeCard.FullName();
//             ClaimRequisition.Posted := FALSE;
//             ClaimRequisition."Global Dimension 1 Code" := Campusz;
//             ClaimRequisition.Status := ClaimRequisition.Status::Pending;
//             ClaimRequisition."Payment Type" := ClaimRequisition."Payment Type"::Imprest;
//             ClaimRequisition."Shortcut Dimension 2 Code" := Departmentz;
//             ClaimRequisition."Function Name" := CampusName;
//             ClaimRequisition."Budget Center Name" := DeptName;
//             ClaimRequisition."No. Series" := 'S_CLAIMS';
//             ClaimRequisition."Responsibility Center" := Rcentre;
//             ClaimRequisition."Account No." := username;
//             ClaimRequisition.Purpose := Reason;
//             ClaimRequisition.Cashier := username;
//             ClaimRequisition.INSERT;
//             LastNum := NextClaimapplicationNo;
//         END;
//     end;

//     procedure ClaimRequisitionApprovalRequest(ReqNo: Text)
//     begin
//         ClaimRequisition.Reset();
//         ClaimRequisition.SETRANGE(ClaimRequisition."No.", ReqNo);
//         IF ClaimRequisition.FIND('-')
//         THEN BEGIN
//             ApprovalMgmtFin.OnSendClaimforApproval(ClaimRequisition);
//         END;
//     end;

//     procedure CancelClaimRequisition(ReqNo: Text)
//     begin
//         ClaimRequisition.Reset();
//         ClaimRequisition.SETRANGE(ClaimRequisition."No.", ReqNo);
//         IF ClaimRequisition.FIND('-')
//         THEN BEGIN
//             // ApprovalMgmtFin.OnCancelStaffClaimForApproval(ClaimRequisition);
//         END;
//     end;

//     procedure StoreRequisitionApprovalRequest(ReqNo: Text)
//     begin
//         StoreRequisition.Reset();
//         StoreRequisition.SETRANGE(StoreRequisition."No.", ReqNo);
//         IF StoreRequisition.FIND('-')
//         THEN BEGIN
//             ApprovalMgmtFin.OnSendSRNforApproval(StoreRequisition);
//         END;
//     end;

//     procedure CancelStoreRequisition(ReqNo: Text)
//     begin
//         StoreRequisition.Reset();
//         StoreRequisition.SETRANGE(StoreRequisition."No.", ReqNo);
//         IF StoreRequisition.FIND('-')
//         THEN BEGIN
//             // ApprovalMgmtFin.OnCancelStoreRequisitionForApproval(StoreRequisition);
//         END;
//     end;

//     procedure StoresRequisitionCreate(EmployeeNo: Text; UserID: Text; RequiredDate: Date; Purpose: Text; Department: Code[20]; Campus: Code[20]; DepartmentName: Text[250]; CampusName: Text[250]; ReqType: Option; ResponsibilityCentre: Code[10]) LastNum: Text
//     begin
//         StoreRequisition.INIT;
//         NextStoreqNo := NoSeriesMgt.GetNextNo('STORE', TODAY, TRUE);
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", EmployeeNo);

//         IF EmployeeCard.FIND('-')
//         THEN BEGIN
//             StoreRequisition."Requester ID" := UserID;
//             SupervisorCard.Reset();
//             SupervisorCard.SETRANGE(SupervisorCard."User ID", UserID);
//             IF SupervisorCard.FIND('-')
//             THEN BEGIN
//                 SupervisorId := SupervisorCard."Approver ID";
//             END;
//             //StoreRequisition.INIT;
//             //StoreRequisition."Staff No." := EmployeeNo;
//             StoreRequisition."No." := NextStoreqNo;
//             StoreRequisition."Request date" := TODAY;
//             StoreRequisition."Required Date" := RequiredDate;
//             StoreRequisition."User ID" := UserID;
//             StoreRequisition."Staff No." := UserID;
//             StoreRequisition."Requester ID" := UserID;
//             StoreRequisition."Request date" := TODAY;
//             StoreRequisition."Request Description" := Purpose;
//             StoreRequisition."No. Series" := 'STORE';
//             StoreRequisition.Status := StoreRequisition.Status::Open;
//             StoreRequisition."Global Dimension 1 Code" := Campus;
//             StoreRequisition."Shortcut Dimension 2 Code" := Department;
//             StoreRequisition."Function Name" := CampusName;
//             StoreRequisition."Budget Center Name" := DepartmentName;
//             StoreRequisition."Responsibility Center" := ResponsibilityCentre;
//             // StoreRequisition."Issuing Store" := IssueStore;
//             StoreRequisition."Store Requisition Type" := ReqType;

//             StoreRequisition.INSERT;
//             LastNum := NextStoreqNo;
//         end
//     end;

//     procedure ImprestRequisitionApprovalRequest(ReqNo: Text)
//     begin
//         ImprestRequisition.Reset();
//         ImprestRequisition.SETRANGE(ImprestRequisition."No.", ReqNo);
//         IF ImprestRequisition.FIND('-')
//         THEN BEGIN
//             ApprovalMgmtFin.OnSendImprestForApproval(ImprestRequisition);

//         END;
//     end;

//     procedure ImprestRequisitionCreate(Campusz: Code[30]; Departmentz: Code[30]; CampusName: Text; DeptName: Text; RCentre: Code[20]; AccType: Integer; username: Code[30]; Reason: Text) LastNum: Text
//     begin
//         ImprestRequisition.INIT;
//         NextImprestapplicationNo := NoSeriesMgt.GetNextNo('IMP', 0D, TRUE);
//         EmployeeCard.Reset();
//         EmployeeCard.SETRANGE(EmployeeCard."No.", username);

//         IF EmployeeCard.FIND('-')
//         THEN BEGIN
//             ImprestRequisition."No." := NextImprestapplicationNo;
//             ImprestRequisition.Date := TODAY;
//             //ImprestRequisition.Payee := EmployeeCard.Names;
//             ImprestRequisition.Payee := EmployeeCard.FullName();
//             //ImprestRequisition."On Behalf Of" := EmployeeCard.Names;
//             ImprestRequisition."On Behalf Of" := EmployeeCard.FullName();

//             ImprestRequisition.Posted := FALSE;
//             ImprestRequisition."Global Dimension 1 Code" := Campusz;
//             ImprestRequisition.Status := ImprestRequisition.Status::Pending;
//             ImprestRequisition."Payment Type" := ImprestRequisition."Payment Type"::Imprest;
//             ImprestRequisition."Shortcut Dimension 2 Code" := Departmentz;
//             ImprestRequisition."Function Name" := CampusName;
//             ImprestRequisition."Budget Center Name" := DeptName;
//             ImprestRequisition."No. Series" := 'IMP';
//             ImprestRequisition."Responsibility Center" := RCentre;
//             //ImprestRequisition."Account Type" := AccType;
//             ImprestRequisition."Account No." := EmployeeCard."No.";
//             ImprestRequisition.Purpose := Reason;
//             ImprestRequisition.Cashier := username;
//             ImprestRequisition."Requested By" := username;
//             ImprestRequisition.INSERT;
//             LastNum := NextImprestapplicationNo;
//         END;
//     end;

//     procedure InsertApproverComments(DocumentNo: Code[50]; ApproverID: Code[100]; Comments: Text[250])
//     begin
//         ApproverComments.Reset();

//         ApproverComments."Document No." := DocumentNo;
//         ApproverComments."User ID" := ApproverID;
//         ApproverComments.Comment := Comments;
//         ApproverComments."Date and Time" := CURRENTDATETIME;

//         ApproverComments.Insert();
//     end;

//     procedure InsertStoreRequisitionLines(ReqNo: Code[30]; ItemNo: Code[30]; AType: Integer; ItemDesc: Text; Amount: Decimal; LineAmount: Decimal; Qty: Decimal; UnitOfMsre: Code[10]; IStore: Code[30]) rtnMsg: Text
//     begin
//         StoreReqLines.Reset();

//         StoreReqLines."Requistion No" := ReqNo;
//         StoreReqLines.Validate("Requistion No");
//         StoreReqLines."No." := ItemNo;
//         StoreReqLines.Type := AType;
//         StoreReqLines.Description := ItemDesc;
//         StoreReqLines."Unit Cost" := Amount;
//         StoreReqLines."Line Amount" := LineAmount;
//         StoreReqLines.Quantity := Qty;
//         StoreReqLines."Unit of Measure" := UnitOfMsre;
//         StoreReqLines."Issuing Store" := IStore;
//         StoreReqLines.Insert();

//         rtnMsg := 'SUCCESS' + '::';
//     end;

//     procedure InsertImprestRequisitionLines(ReqNo: Code[20]; Atypes: Code[50]; AccNo: Code[50]; AccName: Code[50]; Amount: Decimal; UserId: Code[50]) rtnMsg: Text
//     begin
//         ImprestRequisition.Reset();
//         ImprestRequisition.SetRange("No.", ReqNo);

//         if ImprestRequisition.Find('-') then begin
//             ImprestReqLines.Init();
//             ImprestReqLines.No := ReqNo;
//             ImprestReqLines."Advance Type" := Atypes;
//             ImprestReqLines."Shortcut Dimension 2 Code" := ImprestRequisition."Shortcut Dimension 2 Code";
//             ImprestReqLines."Account No:" := AccNo;
//             ImprestReqLines."Account Name" := AccName;
//             ImprestReqLines.Amount := Amount;
//             ImprestReqLines."Due Date" := ImprestRequisition.Date;
//             ImprestReqLines."Imprest Holder" := UserId;
//             ImprestReqLines."Global Dimension 1 Code" := ImprestRequisition."Global Dimension 1 Code";
//             ImprestReqLines.Purpose := ImprestRequisition.Purpose;
//             ImprestReqLines."Amount LCY" := Amount;

//             ImprestReqLines.Insert();

//             rtnMsg := 'SUCCESS' + '::';
//         end;

//     end;

//     procedure InsertClaimRequisitionLines(ReqNo: Code[20]; Atypes: Code[50]; AccNo: Code[50]; AccName: Code[50]; Amount: Decimal; UserId: Code[50]) rtnMsg: Text
//     begin
//         ClaimRequisition.Reset();
//         ClaimRequisition.SetRange("No.", ReqNo);

//         if ClaimRequisition.Find('-') then begin
//             ClaimReqLines.Init();
//             ClaimReqLines.No := ReqNo;
//             ClaimReqLines."Advance Type" := Atypes;
//             ClaimReqLines."Shortcut Dimension 2 Code" := ClaimRequisition."Shortcut Dimension 2 Code";
//             ClaimReqLines."Account No:" := AccNo;
//             ClaimReqLines."Account Name" := AccName;
//             ClaimReqLines.Amount := Amount;
//             ClaimReqLines."Due Date" := ClaimRequisition.Date;
//             ClaimReqLines."Imprest Holder" := UserId;
//             ClaimReqLines."Global Dimension 1 Code" := ClaimRequisition."Global Dimension 1 Code";
//             ClaimReqLines.Purpose := ClaimRequisition.Purpose;
//             ClaimReqLines."Amount LCY" := Amount;

//             ClaimReqLines.Insert();

//             rtnMsg := 'SUCCESS' + '::';
//         end;
//     end;

//     procedure TransportRequisitionApprovalRequest(ReqNo: Text)
//     begin
//         // TransportRequisition.Reset();
//         // TransportRequisition.SETRANGE(TransportRequisition."Transport Requisition No", ReqNo);
//         // IF TransportRequisition.FIND('-')
//         // THEN BEGIN
//         //     AppMgt.SendTransportApprovalRequest(TransportRequisition, TransportRequisition."Responsibility Center");
//         // END;
//     end;

//     procedure VenueRequisitionCreate(Department: Code[20]; BookingDate: Date; MeetingDescription: Text[150]; RequiredTime: Time; Venue: Code[20]; ContactPerson: Text[50]; ContactNo: Text[50]; ContactMail: Text[30]; RequestedBy: Text; Pax: Integer)
//     begin
//         // VenueRequisition.INIT;
//         // NextMtoreqNo := NoSeriesMgt.GetNextNo('VB', 0D, TRUE);
//         // //MealRequisition.INIT;
//         // VenueRequisition."Booking Id" := NextMtoreqNo;
//         // VenueRequisition.Department := Department;
//         // VenueRequisition."Request Date" := TODAY;
//         // VenueRequisition."Booking Date" := BookingDate;
//         // VenueRequisition."Meeting Description" := MeetingDescription;
//         // VenueRequisition."Required Time" := RequiredTime;
//         // VenueRequisition.Venue := Venue;
//         // VenueRequisition."Contact Person" := ContactPerson;
//         // VenueRequisition."Contact Number" := ContactNo;
//         // VenueRequisition."Contact Mail" := ContactMail;
//         // VenueRequisition.Pax := Pax;
//         // VenueRequisition.Status := VenueRequisition.Status::"Pending Approval";
//         // //VenueRequisition."Department Name":=DepartmentName;
//         // VenueRequisition."Requested By" := RequestedBy;
//         // VenueRequisition."No. Series" := 'VB';
//         // //VenueRequisition."Booking Time":= ;

//         // VenueRequisition.INSERT;
//     end;

//     // procedure CreateRecruitmentAccount(Initialsz: Integer; FirstName: Text; MiddleName: Text; LastName: Text; PostalAddress: Text; PostalCode: Text; IDNumber: Code[30]; Genderz: Integer; HomePhoneNumber: Code[30]; Citizenshipz: Text; MaritalStatus: Integer; EthnicOrigin: Text; Disabledz: Option; DesabilityDetails: Text; DoB: Date; KRAPINNumber: Text; ApplicantType: Integer; EmailAddress: Text; Passwordz: Text; PwdNumber: Text[50]) Message: Text
//     // begin
//     //     RecAccountusers.RESET;
//     //     RecAccountusers.SETRANGE(RecAccountusers."Email Address", EmailAddress);
//     //     IF NOT RecAccountusers.FIND('-') THEN BEGIN
//     //         RecAccountusers.INIT;

//     //         RecAccountusers.Initials := Initialsz;
//     //         RecAccountusers."First Name" := FirstName;
//     //         RecAccountusers."Middle Name" := MiddleName;
//     //         RecAccountusers."Last Name" := LastName;
//     //         RecAccountusers."Postal Address" := PostalAddress;
//     //         RecAccountusers."Postal Code" := PostalCode;
//     //         RecAccountusers."ID Number" := IDNumber;
//     //         RecAccountusers.Gender := Genderz;
//     //         RecAccountusers."Home Phone Number" := HomePhoneNumber;
//     //         //RecAccountusers."Residential Address" := ResidentialAddress;
//     //         RecAccountusers.Citizenship := Citizenshipz;
//     //         //RecAccountusers.County := Countyz;
//     //         RecAccountusers."Marital Status" := MaritalStatus;
//     //         RecAccountusers."Ethnic Group" := EthnicOrigin;
//     //         RecAccountusers.Disabled := Disabledz;
//     //         RecAccountusers."Desability Details" := DesabilityDetails;
//     //         RecAccountusers."PWD Number" := PwdNumber;
//     //         RecAccountusers."Date of Birth" := DoB;
//     //         //RecAccountusers."Driving License" := DrivingLicense;
//     //         // RecAccountusers."1st Language" := stLanguage;
//     //         // RecAccountusers."2nd Language" := ndLanguage;
//     //         // RecAccountusers."Additional Language" := AdditionalLanguage;
//     //         RecAccountusers."Applicant Type" := ApplicantType;
//     //         RecAccountusers."Email Address" := EmailAddress;
//     //         RecAccountusers.Password := Passwordz;
//     //         RecAccountusers."Created Date" := TODAY;
//     //         RecAccountusers.INSERT;
//     //         IF RecAccountusers.INSERT THEN;
//     //         Message := 'Account Created successfully' + '::' + RecAccountusers.Password;
//     //     END ELSE BEGIN
//     //         Message := 'Warning! We already have account created with the Email address provided.' + '::' + RecAccountusers.Password;
//     //     END
//     // end;

//     // procedure ValidRecruitmentEmailAddress(username: Text) Message: Text
//     // begin
//     //     RecAccountusers.RESET;
//     //     RecAccountusers.SETRANGE(RecAccountusers."Email Address", username);
//     //     IF RecAccountusers.FIND('-') THEN BEGIN
//     //         Message := TXTCorrectDetails + '::';
//     //     END ELSE BEGIN
//     //         Message := TXTIncorrectDetails + '::';
//     //     END
//     // end;

//     // procedure GetRecruitmentEmailAddress(username: Text) Message: Text
//     // begin
//     //     RecAccountusers.RESET;
//     //     RecAccountusers.SETRANGE(RecAccountusers."Email Address", username);
//     //     IF RecAccountusers.FIND('-') THEN BEGIN
//     //         Message := RecAccountusers."Email Address" + '::';
//     //     END
//     // end;

//     // procedure GetCurrentRecruitmentPassword(Username: Text) Message: Text
//     // begin
//     //     RecAccountusers.RESET;
//     //     RecAccountusers.SETRANGE(RecAccountusers."Email Address", Username);
//     //     IF RecAccountusers.FIND('-') THEN BEGIN
//     //         Message := RecAccountusers.Password + '::';
//     //     END
//     // end;

//     // procedure CheckRecruitmentApplicantLogin(username: Text; userpassword: Text) Message: Text
//     // begin
//     //     RecAccountusers.RESET;
//     //     RecAccountusers.SETRANGE(RecAccountusers."Email Address", username);
//     //     IF RecAccountusers.FIND('-') THEN BEGIN
//     //         IF (RecAccountusers.Password = userpassword) THEN BEGIN
//     //             FullNames := RecAccountusers."First Name" + ' ' + RecAccountusers."Middle Name" + ' ' + RecAccountusers."Last Name";
//     //             Initials := RecAccountusers.Initials;
//     //             pAddress := RecAccountusers."Postal Address";
//     //             pCode := RecAccountusers."Postal Code";
//     //             IDNum := RecAccountusers."ID Number";
//     //             Gender := RecAccountusers.Gender;
//     //             Phone := RecAccountusers."Home Phone Number";
//     //             rAddress := RecAccountusers."Residential Address";
//     //             Citizenship := RecAccountusers.Citizenship;
//     //             County := RecAccountusers.County;
//     //             Mstatus := RecAccountusers."Marital Status";
//     //             Eorigin := RecAccountusers."Ethnic Group";
//     //             Disabled := Format(RecAccountusers.Disabled);
//     //             dDetails := RecAccountusers."Desability Details";
//     //             DOB := RecAccountusers."Date of Birth";
//     //             // //          Dlicense:=RecAccountusers."Driving License";		
//     //             KRA := RecAccountusers."KRA PIN Number";
//     //             // //          firstLang	:= RecAccountusers."1st Language";		
//     //             // //          secondLang:=RecAccountusers."2nd Language";			
//     //             // //          AdditionalLang:=RecAccountusers."Additional Language";	 
//     //             ApplicantType := RecAccountusers."Applicant Type";

//     //             Message := TXTCorrectDetails + '::' + RecAccountusers."Email Address" + '::' + RecAccountusers."First Name" + '::' + RecAccountusers."Middle Name" + '::' + RecAccountusers."Last Name" + '::' + FORMAT(Initials) + '::' + pAddress + '::' + pCode + '::' + IDNum
//     //             + '::' + FORMAT(Gender) + '::' + Phone + '::' + rAddress + '::' + Citizenship + '::' + County + '::' + FORMAT(Mstatus) + '::' + FORMAT(Eorigin) + '::' + FORMAT(Disabled) + '::' + dDetails + '::' + FORMAT(DOB) + '::' + Dlicense
//     //             + '::' + KRA + '::' + firstLang + '::' + secondLang + '::' + AdditionalLang + '::' + FORMAT(ApplicantType);
//     //         END ELSE BEGIN
//     //             FullNames := RecAccountusers."First Name" + ' ' + RecAccountusers."Middle Name" + ' ' + RecAccountusers."Last Name";
//     //             Message := TXTIncorrectDetails + '::' + RecAccountusers."Email Address" + '::' + FullNames;
//     //         END
//     //     END
//     // end;

//     // procedure SubmitJobApplication(EMail: Text; FirstName: Text; MiddletName: Text; LastName: Text; JobID: Text; JobDescription: Text; RefNo: Text) Message: Text
//     // begin

//     //     JobApplications.RESET;

//     //     JobApplications.SETRANGE(JobApplications."E-Mail", EMail);
//     //     JobApplications.SETRANGE(JobApplications."Job Applied For", JobID);
//     //     IF NOT JobApplications.FIND('-') THEN BEGIN
//     //         NextJobapplicationNo := NoSeriesMgt.GetNextNo('JOBAPP', 0D, TRUE);

//     //         RecAccountusers.RESET;
//     //         RecAccountusers.SETRANGE(RecAccountusers."Email Address", EMail);
//     //         IF RecAccountusers.FIND('-') THEN BEGIN
//     //             JobApplications.INIT;

//     //             JobApplications."Application No" := NextJobapplicationNo;
//     //             JobApplications."Employee Requisition No" := RefNo;
//     //             JobApplications."Applicant Type" := RecAccountusers."Applicant Type";
//     //             JobApplications.Initials := FORMAT(RecAccountusers.Initials);
//     //             JobApplications."First Name" := FirstName;
//     //             JobApplications."Middle Name" := MiddletName;
//     //             JobApplications."Last Name" := LastName;
//     //             JobApplications."Postal Address" := RecAccountusers."Postal Address";
//     //             JobApplications."Residential Address" := RecAccountusers."Residential Address";
//     //             JobApplications."Post Code" := RecAccountusers."Postal Code";
//     //             JobApplications.County := RecAccountusers.County;
//     //             JobApplications."Home Phone Number" := RecAccountusers."Home Phone Number";
//     //             JobApplications."Cell Phone Number" := RecAccountusers."Home Phone Number";
//     //             JobApplications."Work Phone Number" := RecAccountusers."Home Phone Number";
//     //             JobApplications."E-Mail" := EMail;
//     //             JobApplications."ID Number" := RecAccountusers."ID Number";
//     //             JobApplications.Gender := RecAccountusers.Gender;
//     //             JobApplications."Country Code" := RecAccountusers.Citizenship;
//     //             JobApplications."Marital Status" := RecAccountusers."Marital Status";
//     //             JobApplications."Ethnic Group" := RecAccountusers."Ethnic Group";
//     //             JobApplications."First Language (R/W/S)" := RecAccountusers."1st Language";
//     //             JobApplications."Driving Licence" := RecAccountusers."Driving License";
//     //             JobApplications.Disabled := RecAccountusers.Disabled;
//     //             JobApplications."Date Of Birth" := RecAccountusers."Date of Birth";
//     //             JobApplications."Second Language (R/W/S)" := RecAccountusers."2nd Language";
//     //             JobApplications."Additional Language" := RecAccountusers."Additional Language";
//     //             JobApplications.Citizenship := RecAccountusers.Citizenship;
//     //             //JobApplications."Ethnic Origin" := RecAccountusers."Ethnic Origin";
//     //             JobApplications."Disabling Details" := RecAccountusers."Desability Details";
//     //             JobApplications."Passport Number" := RecAccountusers."ID Number";
//     //             JobApplications."PIN Number" := RecAccountusers."KRA PIN Number";
//     //             JobApplications."Job Applied For" := JobID;
//     //             JobApplications."Job Applied for Description" := JobDescription;
//     //             JobApplications.Status := JobApplications.Status::Normal;
//     //             JobApplications."Date Applied" := TODAY;
//     //             JobApplications."No. Series" := 'JOBAPP';
//     //             //JobApplications."CV Path" := MyCVPath;
//     //             //JobApplications."Cover Letter Path" := GoodConductPath;
//     //             JobApplications.INSERT;
//     //             IF JobApplications.INSERT THEN;
//     //             Message := 'SUCCESS' + '::' + JobApplications."Application No";
//     //         END

//     //     END ELSE begin
//     //         Message := 'FAILED' + '::' + JobApplications."Application No";
//     //     end;

//     // end;

//     procedure InsertJobApplicantQualifications(AppNo: Code[30]; QualType: Code[30]; QualCode: Code[30]; Institution: Code[50]; FromDate: Date; ToDate: Date) rtnMsg: Text
//     begin
//         ApplicantQualifications.Reset();

//         ApplicantQualifications.SetRange("Application No", AppNo);
//         ApplicantQualifications.SetRange("Qualification Type", QualType);
//         ApplicantQualifications.SetRange("Qualification Code", QualCode);

//         if not ApplicantQualifications.Find('-') then begin
//             ApplicantQualifications.Init();

//             ApplicantQualifications."Application No" := AppNo;
//             ApplicantQualifications."Qualification Type" := QualType;
//             ApplicantQualifications."Qualification Code" := QualCode;
//             ApplicantQualifications.Validate("Qualification Code");
//             ApplicantQualifications."Institution/Company" := Institution;
//             ApplicantQualifications."From Date" := FromDate;
//             ApplicantQualifications."To Date" := ToDate;

//             ApplicantQualifications.Insert();

//             rtnMsg := 'SUCCESS' + '::';
//         end else begin
//             rtnMsg := 'FAILED' + '::';
//         end;
//     end;

//     procedure SubmitJobApplicationAttachments(AppNo: Code[30]; CvPath: Text[250]; CoverLetterPath: Text[250]) Message: Text
//     begin

//         JobApplications.RESET;

//         JobApplications.SETRANGE(JobApplications."Application No", AppNo);
//         IF JobApplications.FIND('-') THEN BEGIN

//             if (JobApplications.Submitted = false) then begin
//                 JobApplications."CV Path" := CvPath;
//                 JobApplications."Cover Letter Path" := CoverLetterPath;
//                 JobApplications.Submitted := true;
//                 JobApplications.Modify();
//                 IF JobApplications.Modify() THEN;
//                 Message := 'SUCCESS' + '::';
//             end else begin
//                 Message := 'FAIL 1' + '::';
//             end



//         END ELSE begin
//             Message := 'FAIL 2' + '::';
//         end
//     end;

//     procedure CheckValidVendorNo(username: Text) Message: Text
//     begin
//         Vendors.RESET;
//         Vendors.SETRANGE(Vendors."No.", username);
//         IF Vendors.FIND('-') THEN BEGIN
//             Message := 'Yes' + '::';
//         END ELSE BEGIN
//             Message := 'No' + '::';
//         END
//     end;

//     // procedure CheckVendorLogin(username: Text; userpassword: Text) Message: Text
//     // begin
//     //     Vendors.RESET;
//     //     Vendors.SETRANGE(Vendors."No.", username);
//     //     IF Vendors.FIND('-') THEN BEGIN
//     //         IF (Vendors."Changed Password" = TRUE) THEN BEGIN
//     //             IF (Vendors.Password = userpassword) THEN BEGIN
//     //                 FullNames := Vendors.Name;
//     //                 Message := TXTCorrectDetails + '::' + FORMAT(Vendors."Changed Password") + '::' + Vendors."No." + '::' + FullNames;
//     //             END ELSE BEGIN
//     //                 FullNames := Vendors.Name;
//     //                 Message := TXTIncorrectDetails + '::' + FORMAT(Vendors."Changed Password") + '::' + Vendors."No." + '::' + FullNames;
//     //             END
//     //         END ELSE BEGIN
//     //             IF (Vendors.Password = userpassword) THEN BEGIN
//     //                 FullNames := Vendors.Name;
//     //                 Message := TXTCorrectDetails + '::' + FORMAT(Vendors."Changed Password") + '::' + Vendors."No." + '::' + FullNames;
//     //             END ELSE BEGIN
//     //                 Message := TXTIncorrectDetails + '::' + FORMAT(Vendors."Changed Password");
//     //             END
//     //         END
//     //     END ELSE BEGIN
//     //         Message := TXTIncorrectDetails + '::';
//     //     END
//     // end;

//     procedure GetVendorProfileDetails(username: Text) Message: Text
//     begin
//         Vendors.RESET;
//         Vendors.SETRANGE(Vendors."No.", username);
//         IF Vendors.FIND('-') THEN BEGIN
//             Message := Vendors."E-Mail" + '::' + Vendors."Phone No." + '::' + Vendors.Address + '::' + Vendors."Post Code" + '::' + Vendors.City;

//         END
//     end;

//     procedure GenerateVendorStatement(VendorNo: Text; filenameFromApp: Text)
//     begin
//         filename := FILESPATH_V + filenameFromApp;
//         IF EXISTS(filename) THEN
//             ERASE(filename);
//         Vendors.RESET;
//         Vendors.SETRANGE(Vendors."No.", VendorNo);
//         //Vendors.SetRange("Date Filter", Today);

//         IF Vendors.FIND('-') THEN BEGIN
//             REPORT.SAVEASPDF(321, filename, Vendors);
//         END
//     end;

//     procedure GenerateVendorRFQ(VendorNo: Text; RFQNo: Text; filenameFromApp: Text)
//     begin
//         filename := FILESPATH_V + filenameFromApp;
//         IF EXISTS(filename) THEN
//             ERASE(filename);
//         QuotationRequestVendors.RESET;
//         QuotationRequestVendors.SETRANGE(QuotationRequestVendors."Vendor No.", VendorNo);
//         QuotationRequestVendors.SETRANGE(QuotationRequestVendors."Document No.", RFQNo);

//         IF Vendors.FIND('-') THEN BEGIN
//             REPORT.SAVEASPDF(52178714, filename, QuotationRequestVendors);
//         END
//     end;

//     procedure GenerateVendorLPO(VendorNo: Text; LPONo: Text; filenameFromApp: Text)
//     begin
//         filename := FILESPATH_V + filenameFromApp;
//         IF EXISTS(filename) THEN
//             ERASE(filename);
//         PurchaseHeader.RESET;
//         PurchaseHeader.SETRANGE(PurchaseHeader."Pay-to Vendor No.", VendorNo);
//         PurchaseHeader.SETRANGE(PurchaseHeader."No.", LPONo);

//         IF Vendors.FIND('-') THEN BEGIN
//             REPORT.SAVEASPDF(52178707, filename, PurchaseHeader);
//         END
//     end;

//     procedure CreateBidderAccount(CompName: Text; PostalAddress: Text; PostalCode: Text; Location: Text; CompPhone: Text; CompEmail: Text; ContactPerson: Text; ContactPersonPhone: Text; ContactPersonEmail: Text; VatPin: Text; CertificateOfIncorporation: Text; VATCertificate: Text; PinRegistrationCertificate: Text; TaxCompliaceCertificate: Text; Password: Text) Message: Text
//     begin
//         tblBidder.RESET;
//         tblBidder.SETRANGE(tblBidder."No.", VatPin);

//         IF NOT tblBidder.FIND('-') THEN BEGIN
//             tblBidder."No." := VatPin;
//             tblBidder.Name := CompName;
//             tblBidder."E-Mail" := CompEmail;
//             tblBidder."Phone No." := CompPhone;
//             tblBidder.Address := PostalAddress + '-' + PostalCode;
//             //tblBidder."Territory Code" := Country;
//             tblBidder."Contact Person" := ContactPerson;
//             //tblBidder."Phone No." := ContactPersonPhone;
//             tblBidder."Contact Person Email" := ContactPersonEmail;
//             tblBidder."VAT Registration No." := VatPin;
//             tblBidder."Certificate of Incoporation" := CertificateOfIncorporation;
//             tblBidder."VAT Registration Certificate" := VATCertificate;
//             tblBidder."Pin Registration Certificate" := PinRegistrationCertificate;
//             tblBidder."Tax Compliance Certificate" := TaxCompliaceCertificate;
//             tblBidder.Password := Password;
//             tblBidder.INSERT;
//             Message := 'SUCCESS' + '::';
//         END
//         ELSE BEGIN
//             Message := 'FAIL' + '::';
//         END;
//     end;

//     procedure CheckBidderLogin(username: Text; userpassword: Text) Message: Text
//     begin
//         tblBidder.RESET;
//         tblBidder.SETRANGE("No.", username);
//         IF tblBidder.FIND('-') THEN BEGIN
//             IF (tblBidder.Password = userpassword) THEN BEGIN
//                 FullNames := tblBidder.Name;
//                 Message := 'Login' + '::' + tblBidder."No." + '::' + FullNames;
//             END ELSE BEGIN
//                 Message := 'Invalid Password';
//             END
//         END ELSE BEGIN
//             Message := 'Invalid Username';
//         END
//     end;

//     procedure CheckBidderPasswordChanged(username: Code[30]) Message: Text
//     begin
//         tblBidder.Reset();
//         tblBidder.SETRANGE("No.", username);
//         IF tblBidder.FIND('-') THEN BEGIN
//             IF (tblBidder."Changed Password" = TRUE) THEN BEGIN
//                 Message := 'Yes' + '::' + FORMAT(tblBidder."Changed Password");
//             END ELSE BEGIN
//                 Message := 'No' + '::' + FORMAT(tblBidder."Changed Password");
//             END
//         END ELSE BEGIN
//             Message := 'No' + '::';
//         END
//     end;



//     procedure ChangeBidderPassword(username: Code[30]; password: Text) ReturnMsg: Text[200];
//     begin
//         tblBidder.Reset();
//         tblBidder.SETRANGE(tblBidder."No.", username);
//         IF tblBidder.FIND('-') THEN BEGIN
//             tblBidder."Password" := password;
//             tblBidder."Changed Password" := TRUE;
//             tblBidder.Modify();
//             ReturnMsg := 'SUCCESS' + '::';
//         END;
//     end;

//     procedure CheckBidderLoginForUnchangedPass(Username: Code[20]; password: Text[50]) ReturnMsg: Text[200];
//     begin
//         tblBidder.Reset();

//         tblBidder.SetRange(tblBidder."No.", Username);

//         if (tblBidder.Find('-')) then begin
//             if (tblBidder.Password = password) then begin
//                 ReturnMsg := 'Login' + '::' + tblBidder."No." + '::' + tblBidder."E-Mail";
//             end
//             else begin
//                 ReturnMsg := 'Invalid Password' + '::';
//             end;
//         end
//         else begin
//             ReturnMsg := 'Invalid Username' + '::';
//         end

//     end;

//     procedure IsTenderBiddingPeriodOpened(TenderNo: Code[30]) Message: Text
//     begin
//         tblTenders.RESET;
//         tblTenders.SETRANGE(tblTenders."No.", TenderNo);

//         IF tblTenders.FIND('-') THEN BEGIN
//             if ((Today < tblTenders."Expected Closing Date")) then begin
//                 Message := 'Yes';
//             end
//             else begin
//                 Message := 'No';
//             end;
//         END
//     end;

//     procedure InsertTenderBid(BidderNo: Code[30]; TenderNo: Code[30]; TechDocPath: Text; FinDocPath: Text) Message: Text
//     begin
//         NextBidApplicationNo := NoSeriesMgt.GetNextNo('BID NO', 0D, TRUE);
//         tblTenderBids.RESET;
//         tblTenderBids.SETRANGE("Bidder No", BidderNo);
//         tblTenderBids.SETRANGE("Tender No.", TenderNo);

//         IF NOT tblTenderBids.FIND('-') THEN BEGIN
//             tblTenderBids."No." := NextBidApplicationNo;
//             tblTenderBids."Bidder No" := BidderNo;
//             tblTenderBids."Tender No." := TenderNo;
//             tblTenderBids."Bid Status" := tblTenderBids."Bid Status"::Submitted;
//             tblTenderBids.Status := tblTenderBids.Status::"Pending Approval";
//             tblTenderBids."Technical Proposal Path" := TechDocPath;
//             tblTenderBids."Financial Proposal Path" := FinDocPath;
//             tblTenderBids."No. Series" := 'BID NO';
//             tblTenderBids.INSERT;
//             Message := 'SUCCESS' + '::' + NextBidApplicationNo;
//         END
//         ELSE BEGIN
//             Message := 'FAILED' + '::' + NextBidApplicationNo;
//         END;
//     end;

//     procedure InsertQuotedAmount(BidderNo: Code[30]; TenderNo: Code[30]; BidNo: Code[30]; LineCode: Code[30]; Desciption: Text; QuotedValue: Decimal) Message: Text
//     begin
//         tblTenderBidFinReq.RESET;
//         tblTenderBidFinReq.SETRANGE("Tender No.", TenderNo);
//         tblTenderBidFinReq.SETRANGE("Bid No.", BidNo);
//         tblTenderBidFinReq.SETRANGE("Bidder No.", BidderNo);
//         tblTenderBidFinReq.SETRANGE(Code, LineCode);

//         IF NOT tblTenderBidFinReq.FIND('-') THEN BEGIN
//             tblTenderBidFinReq.Init();
//             tblTenderBidFinReq."Tender No." := TenderNo;
//             tblTenderBidFinReq."Bid No." := BidNo;
//             tblTenderBidFinReq."Bidder No." := BidderNo;
//             tblTenderBidFinReq.Description := Desciption;
//             tblTenderBidFinReq.Code := LineCode;
//             tblTenderBidFinReq."Quoted Amount" := QuotedValue;
//             tblTenderBidFinReq.Insert();
//             Message := 'SUCCESS: Your bid has been submitted successfully!';
//         END;
//     end;

//     procedure GenerateTenderAwardLetter(TenderNo: Code[30]; BidNo: Code[30]; filenameFromApp: Text)
//     begin
//         filename := FILESPATH_EPROC + filenameFromApp;
//         IF EXISTS(filename) THEN
//             ERASE(filename);
//         tblTenderBids.RESET;
//         tblTenderBids.SETRANGE(tblTenderBids."No.", BidNo);
//         tblTenderBids.SetRange(tblTenderBids."Tender No.", TenderNo);

//         IF tblTenderBids.FIND('-') THEN BEGIN
//             REPORT.SAVEASPDF(52179350, filename, tblTenderBids);
//         END
//     end;

// }
