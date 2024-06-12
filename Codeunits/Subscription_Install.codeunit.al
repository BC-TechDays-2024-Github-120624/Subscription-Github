codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        CLP_TEST();
        JS_Test('JS', 'Jan Saltenberger');
        PBATest();
        RMA_Test();
        JC_TEST();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;


    local procedure CLP_TEST()
    var
        CLPTable: Record "CLP_Test.table.al";
    begin
        If not CLPTable.FindSet() then
        CLPTable.Code := 'CLP';
        CLPTable.Description := 'Christopher';
        Commit();
    end;
    internal procedure JS_Test(Initials: Code[20]; Description: Text[50])
    var
        JS_Test: Record JS_Test;
    begin
        if not JS_Test.Get(Initials) then begin
            JS_Test.Init();
            JS_Test.Validate(Code, Initials);
            JS_Test.Validate(Description, Description);
            JS_Test.Insert();
        end;
    end;

    local procedure PBATest()
    var
        PBATest: Record "PBA Test";
    begin
        PBATest.Init();
        PBATest.Code := 'PBA';
        PBATest.Description := 'PBA Test';
        if PBATest.Insert() then;
    end;

    procedure RMA_Test()
    var
        RMATable: Record "RMA Table";
    begin
        if RMATable.Get('RMA') then
            exit;
        RMATable.Init();
        RMATable.Validate(Code, 'RMA');
        RMATable.Validate(Description, 'Rubén Miranda');
        RMATable.Insert(true);
    end;
    procedure "JC_TEST"()
    var
        JC_Test: Record JC_Test;
    begin
        JC_Test.Init();
        JC_Test.Code := 'JC';
        JC_Test.Description := 'Jack Callaghan';
        if JC_Test.Insert() then;
    end;
}