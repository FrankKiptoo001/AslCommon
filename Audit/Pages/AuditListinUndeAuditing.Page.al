page 63203 "Audit List in Unde Auditing"
{
    CardPageID = "Audit-  risks under audit card";
    DeleteAllowed = false;
    Editable = true;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = 62300;
    SourceTableView = WHERE(status = FILTER("In Audit"));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field("Departmant Name"; Rec."Departmant Name")
                {
                    ApplicationArea = All;
                }
                field(Likelihood; Rec.Likelihood)
                {
                    ApplicationArea = All;
                }
                field(Impact; Rec.Impact)
                {
                    ApplicationArea = All;
                }
                field("Overall Rating"; Rec."Overall Rating")
                {
                    ApplicationArea = All;
                }
                field("Created By"; Rec."Created By")
                {
                    ApplicationArea = All;
                }
                field("Responsible Persons"; Rec."Responsible Persons")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

