table 60210 GeneralDocumentAttachment
{
    fields
    {
        field(1; "Serial No"; Integer)
        {
            AutoIncrement = true;
            DataClassification = ToBeClassified;
        }
        field(2; "Document No"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Attachment; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Description; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(5; UserID; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Serial No")
        {
            Clustered = true;
        }
    }
}
