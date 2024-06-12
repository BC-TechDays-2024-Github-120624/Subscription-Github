table 50200 SomeTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(10; Description; Text[50])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        // key(Key1; MyField)
        // {
        //     Clustered = true;
        // }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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