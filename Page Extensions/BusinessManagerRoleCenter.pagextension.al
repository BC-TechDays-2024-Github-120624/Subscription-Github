pageextension 50100 "BCT BusinessManager RC Ext" extends "Business Manager Role Center"
{

    actions
    {
        addlast(Embedding)
        {
            action("BCT Subscriptions")
            {
                Caption = 'Subscriptions';
                image = InsuranceRegisters;
                RunObject = page "BCT Subscription List";
                ApplicationArea = All;
            }
            action(JS_Test)
            {
                Caption = 'JS';
                image = User;
                RunObject = page JS_TestList;
                ApplicationArea = All;     
    
            }
            action("PBA Test")
            {
                Caption = 'PBA  Test';
                image = InsuranceRegisters;
                RunObject = page "PBA Test List";
                                ApplicationArea = All;
            }
            action("RMA Testlist")
            {
                Caption = 'RMA TestList';
                image = Absence;
                RunObject = page "RMA Test List";
                                ApplicationArea = All;
            }
            action("JC_Test")
            {
                Caption = 'JC Test';
                RunObject = page JC_TestList;
                ApplicationArea = All;
                Image = ListPage;
            }
        }
        addafter("Create Vendor Payments")
        {
            group("BCT Subscriptions 2")
            {

                Caption = 'Subscriptions';
                action("BCT Create Subscription Invoices")
                {
                    Caption = 'Create Subscription Invoices';
                    image = CreateJobSalesInvoice;
                    RunObject = report "BCT Create Invoices";
                                    ApplicationArea = All;
                }
                action("BCT Subscription Customers")
                {
                    Caption = 'Subscription Customers';
                    image = Report;
                                RunObject = report "BCT Subscription Customers";
                                ApplicationArea = All;
                }
                action(PageRunCLP)
                {
                    Caption = 'CLP lists';
                    RunObject = Page CLP_TestLisl;
                    ApplicationArea = All;
                }
            }
        }
    }

}
