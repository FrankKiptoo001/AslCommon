table 50730 "Legal-Contracts"
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
            DataClassification = ToBeClassified;
        }
        field(3; "Contract Number"; Code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Tender No."; Code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Purchase Req. Number"; Text[100])
        {
            TableRelation = "Purchase Header"."No." where("Document Type" = const(Order));
            //TableRelation = "Purchase Header"."No.";

            trigger OnValidate()
            var
                PH: Record "Purchase Header";
            begin
                PH.RESET;
                PH.SETRANGE(PH."No.", "Purchase Req. Number");
                IF PH.FIND('-') THEN
                    "Vendor No." := PH."Buy-from Vendor No.";
                "Vendor Name" := PH."Buy-from Vendor Name";
                //"Contract Amount" := PH.Amount;
                "Tender No." := PH."Tendor Number"
            end;
        }
        field(11; "Vendor No."; Text[60])
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Vendor Name"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(6; Department; Code[100])
        {
            CaptionClass = '1,2,3';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));

            trigger OnValidate()
            var
                DimVal: Record "Dimension Value";
            begin
                DimVal.RESET;
                DimVal.SETRANGE(DimVal.Code, "Department");
                IF DimVal.FIND('-') THEN
                    "Department Name" := DimVal.Name
            end;
        }
        field(15; "Department Name"; Text[250])
        {
        }
        field(7; "Budgeted Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Contract Amount"; Decimal)
        {
            AutoFormatExpression = 'Currency Code';
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line".Amount WHERE("Document No." = FIELD("Purchase Req. Number")));
            //Caption = 'Amount';
            //Editable = false;
            FieldClass = FlowField;
        }
        field(9; Stage; Option)
        {
            OptionMembers = Draft,"Not Signed",Canceled,Signed,Terminated;
            OptionCaption = 'Draft,Not Signed,Canceled,Signed,Terminated';
        }
        field(10; Status; Option)
        {
            OptionMembers = Active,"Up for renewal","Not Renewed","Notice Served",Expired,Terminated;
            OptionCaption = 'Active,Up for renewal,Not Renewed,Notice Served,Expired,Terminated';
        }
        field(12; "No Series"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(13; "User Id"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Date Created"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Completion Date"; Date)
        {

        }
        field(18; "Start Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(19; "Paid Amount"; Decimal)
        {
            /* AutoFormatExpression = 'Currency Code';
             AutoFormatType = 1;
             CalcFormula = Sum("Purchase Line".Amount WHERE("Document No." = FIELD("Purchase Req. Number")));
             //Caption = 'Amount';
             //Editable = false;
             FieldClass = FlowField;  */
        }
        field(20; "Balance"; Decimal)
        {
            AutoFormatExpression = 'Currency Code';
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Budget Balance" WHERE("Document No." = FIELD("Purchase Req. Number")));
            //Caption = 'Amount';
            //Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Termination Reason"; Text[300])
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
            NoSeriesMgt.InitSeries('CONTRACTCASES', xRec."No Series", 0D, "Code", "No Series");
        END;
        "User Id" := USERID;
        "Date Created" := CURRENTDATETIME;
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