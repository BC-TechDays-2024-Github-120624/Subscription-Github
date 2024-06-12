page 50104 CLP_TestLisl
{
    ApplicationArea = All;
    Caption = 'CLP_TestLisl';
    PageType = List;
    SourceTable = "CLP_Test.table.al";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
        }
    }
}
