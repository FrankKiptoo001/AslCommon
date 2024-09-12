page 50731 "To-Do Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "User Tasks";

    layout
    {
        area(Content)
        {
            group(ToDoList)
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
                            NoSeriesMgt.TestManual('TASK');
                            Rec."No Series" := '';
                        end;
                    end;
                }
                field("Task Name"; Rec."Task Name")
                {
                    ApplicationArea = All;

                }

                field("Task Details"; Rec."Task Details")
                {
                    MultiLine = true;
                    ApplicationArea = All;
                }

                field("Assign To"; Rec."Assign To")
                {
                    Caption = 'Assigned To';
                    Enabled = true;
                    ApplicationArea = All;
                }
                field("Full Name"; Rec."Full Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;

                }
                field("Due Time"; Rec."Due Time")
                {
                    ApplicationArea = All;

                }

                field("Created By"; Rec."User Id")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Feedback; Rec.Feedback)
                {
                    MultiLine = true;
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;

                }

                field("No Series"; Rec."No Series")
                {
                    Editable = false;
                    ApplicationArea = All;
                }



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

                    IF (xRec."Status" = Rec.Status::Open) AND (xRec."Assign To" <> '') THEN begin
                        Rec."Status" := Rec.Status::Pending;
                        Rec.Modify();
                        MESSAGE('Task Successfully Submitted to %1 for action', Rec."Full Name");
                    end;
                    IF (xRec.Status = Rec.Status::Cancelled) AND (xRec."Assign To" <> '') THEN begin
                        IF CONFIRM('This task was cancelled, do yo want to open and resend it?', TRUE) THEN
                            Rec."Status" := Rec.Status::Pending;
                        Rec.Modify();
                        MESSAGE('Task assigned to %1 is cancelled', Rec."Full Name");
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
                    MESSAGE('Task Successfully Submitted to %1 for action', Rec."Full Name");

                end;
            }
        }
    }

    var
        myInt: Integer;
}