table 50200 "EF Test"
{
    DataClassification = CustomerContent;

    fields
    {
        field(50200; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;

        }
        field(50201; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;

        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }


}