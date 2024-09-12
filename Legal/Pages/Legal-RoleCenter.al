page 50748 "Legal Role Center"
{
    Caption = 'Legal Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(Control29)
            {
                ShowCaption = false;
                systempart(Control27; Outlook)
                {
                    ApplicationArea = All;
                }
            }
            group(Control26)
            {
                part(Page; 9144)
                {
                    ApplicationArea = All;
                }
                systempart(Notes; MyNotes)
                {
                    ApplicationArea = All;
                }
            }

        }
    }

    actions
    {
        area(Sections)
        {
            group("Court Cases")
            {
                Caption = 'Court Cases';
                action("Court Cases List")
                {
                    Caption = 'Court Cases List';
                    Image = List;
                    RunObject = Page "Legal-Cases List";
                    ApplicationArea = All;
                }
                action("Court CasesOngoing")
                {
                    Caption = 'Ongoing Court Cases';
                    Image = Process;
                    RunObject = Page "Legal-Cases Ongoing";
                    ApplicationArea = All;
                }
                action("Court CasesClosed")
                {
                    Caption = 'Closed Court Cases';
                    Image = Process;
                    RunObject = Page "Legal-Cases Closed";
                    ApplicationArea = All;
                }
            }
            group("Contracts")
            {
                Caption = 'Contracts';
                action("Contract List")
                {
                    Caption = 'Contract List';
                    Image = List;
                    RunObject = Page "Legal-Contract List";
                    ApplicationArea = All;
                }
                action("Past Due Date")
                {
                    Caption = 'Past Due Date';
                    Image = Calendar;
                    RunObject = Page "Legal-PastDueDate Contracts";
                    ApplicationArea = All;
                }
                action("Terminated")
                {
                    Caption = 'Terminated Contracts';
                    Image = StopPayment;
                    RunObject = Page "Legal-Terminated Contracts";
                    ApplicationArea = All;
                }
            }
        }
        area(Reporting)
        {
            group("Court Cases Reports")
            {
                action("Legal-CaseList Report")
                {
                    Caption = 'Legal Case List';
                    Image = Report;
                    RunObject = report "Legal-CaseList Report";
                    ApplicationArea = All;
                    //setfilter("No.","No.", true,true);
                }
            }
            group("Contract Reports")
            {
                action("Contract Report")
                {
                    Caption = 'Contract Report';
                    Image = ContractPayment;
                    RunObject = report "Legal-Contract Report";
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        myInt: Integer;
}