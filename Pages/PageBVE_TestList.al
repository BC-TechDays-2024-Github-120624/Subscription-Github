
page 50235 "PageBVE_TestList"
{
    Caption = 'Page BVE';
    PageType = List;
    SourceTable = "TableBVE_Test";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                }
                field("Description"; Rec.Description)
                {
                    ApplicationArea = All;
                }
           }
        }
    }
}