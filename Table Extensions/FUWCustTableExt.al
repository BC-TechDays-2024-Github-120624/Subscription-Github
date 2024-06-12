tableextension 50200 CustExt extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50260; "FUW_Test"; Text[50]
)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    local procedure FUW()
    var
        myInt: Integer;
    begin
        // Code := 'FUW';
        // Description := 'Franz U. Wøhliche';
        // if Insert() then;
    end;
}