table 61471 "GEN-Religion"
{
    DrillDownPageID = 69266;
    LookupPageID = 69266;

    fields
    {
        field(1; Relegion; Code[50])
        {
        }
        field(2; Remarks; Text[200])
        {
        }
    }

    keys
    {
        key(Key1; Relegion)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

