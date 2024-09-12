page 50745 "Calendar Entries Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CEO-Calendar Entries";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        NoSeriesMgt: Codeunit 396;
                    begin
                        if Rec."Code" <> xRec."Code" then begin
                            //HRSetup.Get;
                            NoSeriesMgt.TestManual('CEOCAL');
                            Rec."No. Series" := '';
                        end;
                    end;
                }
                field("Calendar Name"; Rec."Calendar Name")
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field("No. of People"; Rec."No. of People")
                {
                    ApplicationArea = All;

                }
                field("Date Filter"; Rec."Date Filter")
                {
                    ApplicationArea = All;

                }
                field("Period Start"; Rec."Period Start")
                {
                    ApplicationArea = All;

                }
                field("Period End"; Rec."Period End")
                {
                    ApplicationArea = All;

                }
                field("Component Forecast"; Rec."Calendar Component")
                {
                    Caption = 'Calendar';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}