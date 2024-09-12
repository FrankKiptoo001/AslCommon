page 50750 "Legal-Contract Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Legal-Contracts";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;

                }
                field("Contract Number"; Rec."Contract Number")
                {
                    ApplicationArea = All;

                }
                field("Purchase Req. Number"; Rec."Purchase Req. Number")
                {
                    ApplicationArea = All;

                }
                field("Contract Amount"; Rec."Contract Amount")
                {
                    Editable = true;
                    ApplicationArea = All;
                }
                field("Budgeted Amount"; Rec."Budgeted Amount")
                {
                    ApplicationArea = All;

                }
                field("Paid Amount"; Rec."Paid Amount")
                {
                    ApplicationArea = All;

                }
                field(Balance; Rec.Balance)
                {
                    ApplicationArea = All;

                }
                field("Tender No."; Rec."Tender No.")
                {
                    ApplicationArea = All;

                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                    Editable = false;

                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    ApplicationArea = All;
                    Editable = false;

                }

                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;

                }
                field("Completion Date"; Rec."Completion Date")
                {
                    ApplicationArea = All;

                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;

                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;

                }
                field(Stage; Rec.Stage)
                {
                    ApplicationArea = All;

                }
                field("User Id"; Rec."User Id")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Date Created"; Rec."Date Created")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
            group(Termination)
            {
                field("Termination Reason"; Rec."Termination Reason")
                {
                    MultiLine = true;
                    Caption = 'Reason for Termination';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Upload Contract")
            {
                ApplicationArea = All;
                Image = Attachments;

                trigger OnAction()
                begin

                end;
            }
            action("Terminate Contract")
            {
                ApplicationArea = All;
                Image = CloseDocument;

                trigger OnAction()
                begin
                    if (xRec.Status <> Rec.Status::Terminated) then begin
                        if xRec."Termination Reason" <> '' then begin
                            IF CONFIRM('Do you want to terminate this contract?', TRUE) THEN
                                Rec."Status" := Rec.Status::Terminated;
                            Rec.Modify();
                            MESSAGE('Contract Number %1 is terminated', Rec.Code);
                        end else
                            Error('Please provide reason for termination!');
                    end;
                end;
            }
        }
        area(Reporting)
        {
            action("Contracts List Report")
            {
                Image = ContractPayment;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.RESET;
                    Rec.SETFILTER("Code", Rec."Code");
                    IF Rec.FINDFIRST THEN
                        REPORT.RUN(50722, TRUE, FALSE, Rec);
                end;
            }
        }
    }

    var
        myInt: Integer;
}