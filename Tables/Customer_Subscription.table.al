table 50101 "BCT Customer Subscription"
{
    Caption = 'Customer Subscription';

    fields
    {
        field(1; "Customer No"; Code[20])
        {
            Caption = 'Customer No';
            TableRelation = Customer;
        }
        field(2; "Subscription Code"; Code[10])
        {
            Caption = 'Subscription Code';
            TableRelation = "BCT Subscription";

            trigger OnValidate();
            var
                Subscription: Record "BCT Subscription";
                Item: Record Item;
            begin
                IF "Subscription Code" <> xRec."Subscription Code" THEN
                    xRec.TestField("Last Invoice Date", 0D);
                Subscription.Get("Subscription Code");
                Subscription.TestField("Invoicing Frequence");
                Subscription.TestField("Item No");
                "Item No" := Subscription."Item No";
                Item.Get("Item No");
                Subscription."Deferral Code" := Item."Default Deferral Template Code";
                IF Subscription."Invoicing Price" <> 0 THEN
                    "Invoicing Price" := Subscription."Invoicing Price";
                IF "Invoicing Price" = 0 THEN
                    "Invoicing Price" := Item."Unit Price";
                CASE Subscription."Invoicing Schedule" OF
                    Subscription."Invoicing Schedule"::"beginning of Next Period":
                        "Start Date" := CalcDate('<CM+1D>', WorkDate);

                    Subscription."Invoicing Schedule"::"beginning of Period":
                        "Start Date" := CalcDate('<-CM>', WorkDate);

                    Subscription."Invoicing Schedule"::"End of Period":
                        "Start Date" := CalcDate('<CM>', WorkDate);

                    Subscription."Invoicing Schedule"::"Posting Date":
                        "Start Date" := WorkDate;
                end;
                "Next Invoicing Date" := "Start Date";
                Active := true;
            end;
        }
        field(3; "Item No"; code[20])
        {
            Caption = 'Item No';
            TableRelation = Item;
        }
        field(4; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(5; "Last Invoice Date"; Date)
        {
            Caption = 'Last Invoice Date';
            Editable = false;
        }
        field(6; "Next Invoicing Date"; Date)
        {
            Caption = 'Next Invoicing Date';
        }
        field(7; "Cancelled Date"; date)
        {
            Caption = 'Cancelled Date';
        }
        field(8; Active; Boolean)
        {
            Caption = 'Active';
        }
        field(9; "Invoicing Price"; Decimal)
        {
            Caption = 'Invoicing Price';
        }
        field(10; "Allow Line Discount"; Boolean)
        {
            Caption = 'Allow Line Discount';
        }
        field(50200; JS_Test; Text[50])
        {
            Caption = 'JS_Test';
        }
    }

    keys
    {
        key(PK; "Customer No", "Subscription Code")
        {
            Clustered = true;
        }
    }
}