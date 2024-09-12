table 50726 "CEO-Appointments"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Integer)
        {
            AutoIncrement = true;

        }
        field(2; "Code"; Code[30])
        {

        }
        field(3; "Date"; Date)
        {
        }
        field(4; "Time"; Time)
        {
        }
        field(5; "Reason"; Text[250])
        {
        }
        field(6; Status; Option)
        {
            OptionMembers = Open,Pending,Cancelled,Processing,Completed;
            OptionCaption = 'Open,Pending,Cancelled,Processing,Completed';
        }
        field(7; "User Id"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Date Created"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "No Series"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "No.", "Code")
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
            NoSeriesMgt.InitSeries('LEGALAPP', xRec."No Series", 0D, "Code", "No Series");
        END;
        "User Id" := USERID;
        "Date Created" := CURRENTDATETIME;
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

}