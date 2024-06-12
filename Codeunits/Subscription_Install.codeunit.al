codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        JS_Test('JS', 'Jan Saltenberger');
        PBATest();
        //Run JR's initialisation routines.
        JR_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

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
}