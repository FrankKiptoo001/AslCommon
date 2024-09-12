table 50728 "CEO-Production Forecast Name"
{
    Caption = 'Production Forecast Name';
    DrillDownPageID = "CEO Calendar Names";
    LookupPageID = "CEO Calendar Names";

    fields
    {
        field(1; Name; Code[10])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    trigger OnDelete()
    var
        ProdForecastEntry: Record "CEO-Production Forecast Entry";
    begin
        ProdForecastEntry.SETRANGE("Calendar Name", Name);
        IF NOT ProdForecastEntry.ISEMPTY THEN BEGIN
            IF GUIALLOWED THEN
                IF NOT CONFIRM(Confirm001Qst, TRUE, Name) THEN
                    ERROR('');
            ProdForecastEntry.DELETEALL;
        END;
    end;

    var
        Confirm001Qst: Label 'The Production Forecast %1 has entries. Do you want to delete it anyway?';
}

