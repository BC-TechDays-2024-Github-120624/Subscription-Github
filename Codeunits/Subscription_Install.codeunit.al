codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension

        BVE_Init();
        Sun_Test();
        CLP_TEST();
        JS_Test('JS', 'Jan Saltenberger');
        PBATest();
        RMA_Test();
        JC_TEST();
        DC_Test();
        EF_Test();
        MJA_Test();
        //Run JR's initialisation routines.
        JR_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension
    end;

    local procedure EF_Test()
    var
        TestTable: Record "EF Test";
    begin
        IF TestTable.get('EF') then exit;
        TestTable.Init();
        TestTable.Code := 'EF';
        Testtable.Description := 'Eythor';
        TestTable.Insert();
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

    local procedure DC_Test()
    var
        DCTest: Record "DC Test";
    begin
        DCTest.Init();
        DCTest.Code := 'DC';
        DCTest.Description := 'David Currie';
        if DCTest.Insert() then
        ;
    end;

    local procedure JR_Test()
    var
        JRTest: Record JR_Test;
    begin
        //Dirty hardcoded values... But no-one is going to read this code, so who cares?
        if JRTest.get('JR') then
            exit; //Already exists, so something has gone seriously wrong here - quit gracefully.
        JRTest.init;
        JRTest.code := 'JR';
        JRTest.Description := 'Johnathan';
        JRTest.insert(false);

    end;

    internal procedure MJA_Test()
    var
        MJATest: Record MJA_Test;
    begin
        if MJATest.Get('MJA') then
            MJATest.Delete();
        MJATest.Init();
        MJATest.Validate(Code, 'MJA');
        MJATest.Validate(Description, 'Mindaugas');
        MJATest.Insert();
    end;

    local procedure Sun_Test()
    var
        MyRec: Record "Sun_Test";
    begin
        MyRec.Code := 'Sun_Test';
        MyRec.Description := 'This is Init test for Sun.';
        MyRec.Insert();
    end;

    local procedure BVE_Init()

    var
        tableBVE_Test: record TableBVE_Test;

    begin

        tableBVE_Test.Init();
        tableBVE_Test.Code := 'BVE';
        tableBVE_Test.Description := 'BVE Test';
        tableBVE_Test.insert();

    end;

}