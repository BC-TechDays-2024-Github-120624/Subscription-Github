codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        JS_Test('JS', 'Jan Saltenberger');
        PBATest();
        JC_TEST();
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