page 50206 "DC_Test List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "DC Test";
    DelayedInsert = true;
    layout
    {

        area(Content)
        {
            repeater(Content1)
            {
                field(Code; Rec.Code)
                {

                }
                field(Desc; Rec.Description)
                {
                }
            }
        }
    }
}