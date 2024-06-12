tableextension 50100 "BCT Customer Ext" extends Customer
// Original Object
{
    fields
    {
        field(50100; "BCT Subscription Customer"; Boolean)
        {
            Caption = 'Subscription Customer';
            FieldClass = FlowField;
            CalcFormula = Exist("BCT Customer Subscription" where("Customer No" = field("No."), Active = const(true)));
            Editable = false;
        }
        field(50200; "PBA Test"; Boolean)
        {
            Caption = 'PBA Test';
            DataClassification = CustomerContent;
        }
    }
        field(50210; "JR_Test"; Text[50])
        {
            Caption = 'JR Test';
            DataClassification = ToBeClassified;
        }
    }
}