page 50207 JC_TestList
{
    ApplicationArea = All;
    Caption = 'JC_TestList';
    PageType = List;
    SourceTable = JC_Test;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                }
                field(Description; Rec.Description)
                {
                }
            }
        }
    }
}
