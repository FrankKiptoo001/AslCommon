page 50733 "Task Group Setup"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Task-Group Setup";

    layout
    {
        area(Content)
        {
            group("Task Team Group")
            {
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        NoSeriesMgt: Codeunit 396;
                    begin
                        if Rec."Code" <> xRec."Code" then begin
                            //HRSetup.Get;
                            NoSeriesMgt.TestManual('TSKGROUP');
                            Rec."No Series" := '';
                        end;
                    end;

                }
                field("Team Name"; Rec."Team Name")
                {
                    ApplicationArea = All;

                }
                field("Task Name"; Rec."Task Name")
                {
                    ApplicationArea = All;

                }
                field("Task Details"; Rec."Task Details")
                {
                    ApplicationArea = All;

                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;

                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;

                }
                field("Region Code"; Rec."Region Code")
                {
                    ApplicationArea = All;

                }
                field("Region Name"; Rec."Region Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;

                }
                field("Department Name"; Rec."Department Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Priority; Rec.Priority)
                {
                    Caption = 'Pririty Level';
                    ApplicationArea = All;
                }
                field("User Id"; Rec."User Id")
                {
                    Caption = 'Created By';
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Modified By"; Rec."Modified By")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Modified On"; Rec."Modified On")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;

                }
            }
            part("Task-Team Members"; "Task-Team Members List")
            {
                SubPageLink = "Team Code" = FIELD("Code");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Submit")
            {
                ApplicationArea = All;
                Caption = '&Submit';
                Image = SendTo;

                trigger OnAction()
                begin

                    IF (xRec."Status" = Rec.Status::Open) AND (xRec."Team Name" <> '') THEN begin
                        Rec."Status" := Rec.Status::Pending;
                        Rec.Modify();
                        MESSAGE('Task Successfully Submitted to %1 for action', Rec."Team Name");
                    end;
                    IF (xRec.Status = Rec.Status::Cancelled) AND (xRec."Team Name" <> '') THEN begin
                        IF CONFIRM('This task was cancelled, do yo want to open and resend it?', TRUE) THEN
                            Rec."Status" := Rec.Status::Pending;
                        Rec.Modify();
                        MESSAGE('Task Successfully Submitted to %1 for action', Rec."Team Name");

                    end;
                end;
            }

            action("Cancel")
            {
                ApplicationArea = All;
                Caption = '&Cancel This Task';
                Image = Cancel;

                trigger OnAction()
                begin

                    Rec."Status" := Rec.Status::Cancelled;
                    Rec.Modify();
                    MESSAGE('Task assigned to %1 is cancelled', Rec."Team Name");

                end;
            }
        }
    }

    var
        myInt: Integer;
}