table 50235 "TableBVE_Test"
{
    Caption = 'Table BVE';

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[50])
        {
            Caption = 'Code';
        }

   }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}