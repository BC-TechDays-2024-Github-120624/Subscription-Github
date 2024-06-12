tableextension 50103 "BCT Customer Ext" extends Customer
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

        field(50204; "BVE_Test"; Text[50])
        {
            Caption = 'Description BVE';
        }

        field(50211; Init_Test; Text[50])
        {
            Caption = 'Init Test';
        }
        field(50203; "CLP_TEST"; text[50])
        {
            Caption = 'CLP Test Field';
            Editable = false;
        }
        field(50200; "PBA Test"; Boolean)
        {
            Caption = 'PBA Test';
            DataClassification = CustomerContent;
        }
        field(50201; RMA_Test; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50207; "JC_Test"; Text[50])
        {
            Caption = 'JC_Test';
        }
        field(50206; "DC Test"; Text[50])
        {

        }
        field(50208; MJA_Test; Text[50])
        {
            Caption = 'MJA Test';
        }
        field(50210; "JR_Test"; Text[50])
        {
            Caption = 'JR Test';
            DataClassification = ToBeClassified;
        }
    }
}