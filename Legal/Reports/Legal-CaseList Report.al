report 50721 "Legal-CaseList Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Legal/Reports/Legal-CaseList Report.rdl';
    EnableExternalImages = true;

    dataset
    {
        dataitem(DataItem1; "Legal-Cases")
        {
            DataItemTableView = SORTING("Case Number");
            RequestFilterFields = "Case Number";

            column("No_"; "No.")
            {

            }
            column(Index_Sheet; "Index Sheet")
            {

            }
            column(Case_Number; "Case Number")
            {

            }
            column(Case_Title; "Case Title")
            {

            }
            column(Case_Description; "Case Description")
            {

            }
            column(Advocate_Name; "Advocate Name")
            {

            }
            column(Filing_Registration_FR__No_; "Filing Registration(FR) No.")
            {

            }
            column(Judgement; Judgement)
            {

            }
            column(Start_Date; "Start Date")
            {

            }
            column(Trial_Court_No_; "Trial Court No.")
            {

            }
            column(Objections_Notification; "Objections Notification")
            {

            }
            column(Objections_Status; "Objections Status")
            {

            }
            column(User_Id; "User Id")
            {

            }
            column(companyName; CompanyInformation.Name)
            {
            }
            column(companyAddress; CompanyInformation."Address 2")
            {
            }
            column(pic; CompanyInformation.Picture)
            {
            }

            dataitem("Legal-Court Proceedings"; "Legal-Court Proceedings")
            {
                DataItemLink = "Code" = FIELD("Case Number");
                column(Date; Date)
                {

                }
                column(Time; Time)
                {

                }
                column(Remarks; Remarks)
                {

                }
                column(Status; Status)
                {

                }
            }
        }
    }

    requestpage
    {
        layout
        {
        }

        actions
        {
        }
    }
    trigger OnInitReport()
    begin
        DateFilter := TODAY;
    end;

    trigger OnPreReport()
    begin
        IF CompanyInformation.GET THEN
            CompanyInformation.CALCFIELDS(Picture);

    end;

    var
        CompanyInformation: Record 79;
        DateFilter: Date;
}