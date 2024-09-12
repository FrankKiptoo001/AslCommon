table 50729 "CEO-Calendar Entries"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[30])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Code; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Calendar Name"; Text[300])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Description"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "No. Series"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Date Filter"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Period Start"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Period End"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Calendar Component"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Planned Calendar Name"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Location Filter"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(12; "No. of People"; Decimal)
        {
            CalcFormula = Sum("CEO-Production Forecast Entry"."Number of People" WHERE("Item No." = FIELD("No."),
                                                                                            "Calendar Name" = FIELD("Calendar Name"),
                                                                                            "Calendar Date" = FIELD("Date Filter"),
                                                                                            "Location Code" = FIELD("Location Filter"),
                                                                                            "Calendar Component" = FIELD("Calendar Component")));
            Caption = 'No. of People';
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "No.", Code)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit 396;
    begin
        IF "Code" = '' THEN BEGIN
            /* ACAGeneralSetUp.GET;
            ACAGeneralSetUp.TESTFIELD("Further Info Nos"); //rsk */
            NoSeriesMgt.InitSeries('CEOCAL', xRec."No. Series", 0D, "Code", "No. Series");
        END;
        // "User Id" := USERID;
        // "Date Created" := CURRENTDATETIME;
        //Date := TODAY;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    /* var
    item: Record Item; */

}