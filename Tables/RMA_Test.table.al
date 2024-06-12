table 50102 "RMA Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Code';
        }
        field(2; Description; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Text';
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