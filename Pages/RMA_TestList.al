page 50210 "RMA Test List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "RMA Table";

    layout
    {
        area(Content)
        {
            repeater(Control1)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Text field.';
                }
            }
        }
    }

}