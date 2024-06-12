table 50206 "DC Test"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            NotBlank = true;
            Caption = 'Code';

        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
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