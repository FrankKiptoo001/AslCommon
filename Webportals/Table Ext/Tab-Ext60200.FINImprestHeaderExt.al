tableextension 60200 "FIN-Imprest Header Ext" extends "FIN-Imprest Header"
{
    fields
    {
        field(60200; "Memo Number"; Code[30])
        {
            Caption = 'Memo Number';
            DataClassification = ToBeClassified;
        }
    }
}
