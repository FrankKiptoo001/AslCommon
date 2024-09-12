page 50747 "Legal-Cases Card"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Legal-Cases";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Case Number"; Rec."Case Number")
                {
                    ApplicationArea = All;

                }
                field("Case Title"; Rec."Case Title")
                {
                    ApplicationArea = All;

                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;

                }
                field("Case Description"; Rec."Case Description")
                {
                    MultiLine = true;
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;

                }

            }
            group(Applications)
            {
                field("Advocate Name"; Rec."Advocate Name")
                {
                    ApplicationArea = All;

                }
                field("Trial Court No."; Rec."Trial Court No.")
                {
                    ApplicationArea = All;

                }
                field("Filing Registration(FR) No."; Rec."Filing Registration(FR) No.")
                {
                    ApplicationArea = All;

                }
                field("Index Sheet"; Rec."Index Sheet")
                {
                    ApplicationArea = All;

                }
            }

            part("Legal-Court Proceedings"; "Legal-Court Proceedings")
            {
                SubPageLink = "Code" = FIELD("Case Number");
                ApplicationArea = All;
            }

            group(Decree)
            {
                field("Decree Notification"; Rec.Judgement)
                {
                    MultiLine = true;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Upload File")
            {
                ApplicationArea = All;
                Image = Attachments;

                trigger OnAction()
                begin

                end;
            }
            action("Close Case")
            {
                ApplicationArea = All;
                Image = CloseDocument;

                trigger OnAction()
                begin
                    if (xRec.Status = Rec.Status::Open) OR (xRec.Status <> Rec.Status::Closed) then begin
                        IF CONFIRM('Do you want to mark this case as closed?', TRUE) THEN
                            Rec."Status" := Rec.Status::Closed;
                        Rec.Modify();
                        MESSAGE('Case Number %1 is marked as closed', Rec."Case Number");
                    end else
                        Error('The Case is not open or it is already closed');
                end;
            }
            action("Mark as Ongoing")
            {
                ApplicationArea = All;
                Image = Process;

                trigger OnAction()
                begin
                    if (xRec.Status <> Rec.Status::Open) OR (xRec.Status <> Rec.Status::Closed) then begin
                        IF CONFIRM('Do you want to mark this case as ongoing?', TRUE) THEN
                            Rec."Status" := Rec.Status::Ongoing;
                        Rec.Modify();
                        MESSAGE('Case Number %1 is marked as ongoing', Rec."Case Number");
                    end Else
                        Error('This Document is not open or is already closed');
                    ;
                end;
            }

        }
        area(Reporting)
        {
            action("Legal Cases List Report")
            {
                Image = "Report";
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.RESET;
                    Rec.SETFILTER("Case Number", Rec."Case Number");
                    IF Rec.FINDFIRST THEN
                        REPORT.RUN(50721, TRUE, FALSE, Rec);
                end;
            }
        }
    }

    var
        myInt: Integer;
}