page 50229 Sun_TestList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Sun_Test";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;

                }
                field(Description; REc.Description)
                {
                    ApplicationArea = All;

                }
            }
        }

    }

}