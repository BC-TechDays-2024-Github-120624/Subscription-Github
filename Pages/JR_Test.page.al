page 50202 "JR Test"
{
    PageType = List;
    SourceTable = JR_Test;
    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field(Code; Rec.Code)
                {
                    Caption = 'Code';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                    ApplicationArea = All;
                }
            }
        }
    }
}