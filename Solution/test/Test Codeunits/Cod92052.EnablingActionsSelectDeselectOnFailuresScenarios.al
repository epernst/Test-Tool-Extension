codeunit 92052 "Enabl. Actions on Failures FLX"
{
    // (c) fluxxus.nl - https://github.com/fluxxus-nl/Test-Tool-Extension

    // [FEATURE] Enabling Actions on Failures Unfiltered
    // [FEATURE] Enabling Actions on Failures Filtered
    SubType = Test;

    [Test]
    procedure UnfilteredDisabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Unfiltered
    begin
        // [SCENARIO #0001] Unfiltered disabled failed test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled failed test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledFailedTestFunctions();
        // [GIVEN] One disabled test codeunit with three disabled failed test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions();

        // [WHEN] Do nothing
        DoNothing();

        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is disabled
        VerifyDeselectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is enabled
        VerifySelectOnFailuresIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure UnfilteredEnabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Unfiltered
    begin
        // [SCENARIO #0002] Unfiltered enabled failed test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled failed test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledFailedTestFunctions();
        // [GIVEN] One enabled test codeunit with three enabled failed test functions
        CreateOneEnabledTestCodeunitWithThreeEnabledFailedTestFunctions();

        // [WHEN] Do nothing
        DoNothing();

        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure UnfilteredEnabledAndDisabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Unfiltered
    begin
        // [SCENARIO #0003] Unfiltered enabled and disabled failed test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled failed test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledFailedTestFunctions();
        // [GIVEN] One disabled test codeunit with three disabled failed test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions();

        // [WHEN] Do nothing
        DoNothing();

        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is enabled
        VerifySelectOnFailuresIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure SelectOnAllOnUnfilteredDisabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Unfiltered
    begin
        // [SCENARIO #0004] Select on All on unfiltered disabled failed test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled failed test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledFailedTestFunctions();
        // [GIVEN] One disabled test codeunit with three disabled failed test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions();

        // [WHEN] Perform Select on All
        PerformSelectOnAll(NoFilterOnCodeunit());

        // [THEN] Run is set on all test codeunits and functions
        VerifyRunIsSetOnAllTestCodeunitsAndFunctions(NoFilterOnCodeunit());
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure DeselectOnAllOnUnfilteredEnabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Unfiltered
    begin
        // [SCENARIO #0005] Deselect on All on unfiltered enabled failed test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled failed test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledFailedTestFunctions();
        // [GIVEN] One enabled test codeunit with three enabled failed test functions
        CreateOneEnabledTestCodeunitWithThreeEnabledFailedTestFunctions();

        // [WHEN] Perform Deselect on All
        PerformDeselectOnAll(NoFilterOnCodeunit());

        // [THEN] Run is not set on all test codeunits and functions
        VerifyRunIsNotSetOnAllTestCodeunitsAndFunctions(NoFilterOnCodeunit());
        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is disabled
        VerifyDeselectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is enabled
        VerifySelectOnFailuresIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure SelectOnFailuresOnUnfilteredDisabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Unfiltered
    begin
        // [SCENARIO #0006] Select on Failures on unfiltered disabled failed test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled failed test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledFailedTestFunctions();
        // [GIVEN] One disabled test codeunit with three disabled failed test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions();

        // [WHEN] Perform Select on Failures
        PerformSelectOnFailures(NoFilterOnCodeunit());

        // [THEN] Run is set on all test codeunits and functions
        VerifyRunIsSetOnAllTestCodeunitsAndFunctions(NoFilterOnCodeunit());
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure SelectOnFailuresOnUnfilteredEnabledAndDisabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Unfiltered
    begin
        // [SCENARIO #0007] Select on Failures on unfiltered enabled and disabled failed test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled failed test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledFailedTestFunctions();
        // [GIVEN] One disabled test codeunit with three disabled failed test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions();

        // [WHEN] Perform Select on Failures
        PerformSelectOnFailures(NoFilterOnCodeunit());

        // [THEN] Run is set on all test codeunits and functions
        VerifyRunIsSetOnAllTestCodeunitsAndFunctions(NoFilterOnCodeunit());
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(NoFilterOnCodeunit());
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(NoFilterOnCodeunit());
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(NoFilterOnCodeunit());
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(NoFilterOnCodeunit());
    end;

    [Test]
    procedure FilteredDisabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0008] Filtered disabled failed test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled failed test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledFailedTestFunctions();
        // [GIVEN] One disabled test codeunit with three disabled failed test functions
        SecondCodeunitID := CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions();

        // [WHEN] Set filter on second test codeunit
        // handled by Verify... task in [THEN] part based on SecondCodeunitID

        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is disabled
        VerifyDeselectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is enabled
        VerifySelectOnFailuresIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure FilteredEnabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0009] Filtered enabled failed test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled failed test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledFailedTestFunctions();
        // [GIVEN] One enabled test codeunit with three enabled failed test functions
        SecondCodeunitID := CreateOneEnabledTestCodeunitWithThreeEnabledFailedTestFunctions();

        // [WHEN] Set filter on second test codeunit
        // handled by Verify... task in [THEN] part based on SecondCodeunitID

        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure FilteredEnabledAndDisabledFailedTestFunctions1()
    // [FEATURE] Enabling Actions on Failures Filtered
    var
        FirstCodeunitID: Integer;
    begin
        // [SCENARIO #0010] Filtered enabled and disabled failed test functions 1
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled failed test functions
        FirstCodeunitID := CreateOneEnabledTestCodeunitWithFiveEnabledFailedTestFunctions();
        // [GIVEN] One disabled test codeunit with three disabled failed test functions
        CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions();

        // [WHEN] Set filter on first test codeunit
        // handled by Verify... task in [THEN] part based on FirstCodeunitID

        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(SetFilterOn(FirstCodeunitID));
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(SetFilterOn(FirstCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(FirstCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(FirstCodeunitID));
    end;

    [Test]
    procedure FilteredEnabledAndDisabledFailedTestFunctions2()
    // [FEATURE] Enabling Actions on Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0011] Filtered enabled and disabled failed test functions 2
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled failed test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledFailedTestFunctions();
        // [GIVEN] One disabled test codeunit with three disabled failed test functions
        SecondCodeunitID := CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions();

        // [WHEN] Set filter on second test codeunit
        // handled by Verify... task in [THEN] part based on SecondCodeunitID

        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is disabled
        VerifyDeselectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is enabled
        VerifySelectOnFailuresIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure SelectOnAllOnFilteredDisabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0012] Select on All on filtered disabled failed test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled failed test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledFailedTestFunctions();
        // [GIVEN] One disabled test codeunit with three disabled failed test functions
        SecondCodeunitID := CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions();
        // [GIVEN] Filter on second test codeunit
        // handled by Perform ... task in [WHEN] part based on SecondCodeunitID

        // [WHEN] Perform Select on All
        PerformSelectOnAll(SetFilterOn(SecondCodeunitID));

        // [THEN] Run is set on all filtered test codeunits and functions
        VerifyRunIsSetOnAllFilteredTestCodeunitsAndFunctions(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure DeselectOnAllOnFilteredEnabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0013] Deselect on All on filtered enabled failed test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled failed test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledFailedTestFunctions();
        // [GIVEN] One enabled test codeunit with three enabled failed test functions
        SecondCodeunitID := CreateOneEnabledTestCodeunitWithThreeEnabledFailedTestFunctions();
        // [GIVEN] Filter on second test codeunit
        // handled by Perform ... task in [WHEN] part based on SecondCodeunitID

        // [WHEN] Perform Deselect on All
        PerformDeselectOnAll(SetFilterOn(SecondCodeunitID));

        // [THEN] Run is not set on all filtered test codeunits and functions
        VerifyRunIsNotSetOnAllFilteredTestCodeunitsAndFunctions(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on All is enabled
        VerifySelectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is disabled
        VerifyDeselectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is enabled
        VerifySelectOnFailuresIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure SelectOnFailuresOnFilteredDisabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0014] Select on Failures on filtered disabled failed test functions
        Initialize();

        // [GIVEN] One disabled test codeunit with five disabled failed test functions
        CreateOneDisabledTestCodeunitWithFiveDisabledFailedTestFunctions();
        // [GIVEN] One disabled test codeunit with three disabled failed test functions
        SecondCodeunitID := CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions();
        // [GIVEN] Filter on second test codeunit
        // handled by Perform ... task in [WHEN] part based on SecondCodeunitID

        // [WHEN] Perform Select on Failures
        PerformSelectOnFailures(SetFilterOn(SecondCodeunitID));

        // [THEN] Run is set on all filtered test codeunits and functions
        VerifyRunIsSetOnAllFilteredTestCodeunitsAndFunctions(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
    end;

    [Test]
    procedure SelectOnFailuresOnFilteredEnabledAndDisabledFailedTestFunctions()
    // [FEATURE] Enabling Actions on Failures Filtered
    var
        SecondCodeunitID: Integer;
    begin
        // [SCENARIO #0015] Select on Failures on filtered enabled and disabled failed test functions
        Initialize();

        // [GIVEN] One enabled test codeunit with five enabled failed test functions
        CreateOneEnabledTestCodeunitWithFiveEnabledFailedTestFunctions();
        // [GIVEN] One disabled test codeunit with three disabled failed test functions
        SecondCodeunitID := CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions();
        // [GIVEN] Filter on second test codeunit
        // handled by Perform ... task in [WHEN] part based on SecondCodeunitID

        // [WHEN] Perform Select on Failures
        PerformSelectOnFailures(SetFilterOn(SecondCodeunitID));

        // [THEN] Run is set on all filtered test codeunits and functions
        VerifyRunIsSetOnAllFilteredTestCodeunitsAndFunctions(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on All is disabled
        VerifySelectOnAllIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Deselect on All is enabled
        VerifyDeselectOnAllIsEnabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Failures is disabled
        VerifySelectOnFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
        // [THEN] Select on Non Failures is disabled
        VerifySelectOnNonFailuresIsDisabled(SetFilterOn(SecondCodeunitID));
    end;

    var
        Assert: Codeunit Assert;
        LibraryTestFunctions: Codeunit "Lib. - Test Function Lns FLX";
        LibraryVerifyActions: Codeunit "Library - Verify Actions FLX";
        LibraryPerformSelect: Codeunit "Library - Perform Select FLX";
        TestSuiteName: Code[10];

    local procedure Initialize()
    var
        LibraryTestInitialize: Codeunit "Library - Test Initialize";
        LibraryUtility: Codeunit "Library - Utility";
    begin
        LibraryTestInitialize.OnTestInitialize(Codeunit::"Enabl. Actions on Failures FLX");

        TestSuiteName := LibraryUtility.GenerateGUID();
        LibraryTestFunctions.CreateTestSuite(TestSuiteName);
        LibraryTestFunctions.SetCodeunitBaseID(-Codeunit::"Enabl. Actions on Failures FLX");
    end;

    local procedure CreateOneDisabledTestCodeunitWithFiveDisabledFailedTestFunctions(): Integer
    begin
        with LibraryTestFunctions do begin
            CreateTestCodeunit(TestSuiteName, GetNextCodeunitID(), IsDisabled());
            CreateTestFunctions(TestSuiteName, GetCurrentCodeunitID(), IsDisabled(), 0, 5);
            SetTestCodeunitResult(TestSuiteName, GetCurrentCodeunitID());
            exit(GetCurrentCodeunitID());
        end;
    end;

    local procedure CreateOneDisabledTestCodeunitWithThreeDisabledFailedTestFunctions(): Integer
    begin
        with LibraryTestFunctions do begin
            CreateTestCodeunit(TestSuiteName, GetNextCodeunitID(), IsDisabled());
            CreateTestFunctions(TestSuiteName, GetCurrentCodeunitID(), IsDisabled(), 0, 3);
            SetTestCodeunitResult(TestSuiteName, GetCurrentCodeunitID());
            exit(GetCurrentCodeunitID());
        end;
    end;

    local procedure CreateOneEnabledTestCodeunitWithFiveEnabledFailedTestFunctions(): Integer
    begin
        with LibraryTestFunctions do begin
            CreateTestCodeunit(TestSuiteName, GetNextCodeunitID(), IsEnabled());
            CreateTestFunctions(TestSuiteName, GetCurrentCodeunitID(), IsEnabled(), 0, 5);
            SetTestCodeunitResult(TestSuiteName, GetCurrentCodeunitID());
            exit(GetCurrentCodeunitID());
        end;
    end;

    local procedure CreateOneEnabledTestCodeunitWithThreeEnabledFailedTestFunctions(): Integer
    begin
        with LibraryTestFunctions do begin
            CreateTestCodeunit(TestSuiteName, GetNextCodeunitID(), IsEnabled());
            CreateTestFunctions(TestSuiteName, GetCurrentCodeunitID(), IsEnabled(), 0, 3);
            SetTestCodeunitResult(TestSuiteName, GetCurrentCodeunitID());
            exit(GetCurrentCodeunitID());
        end;
    end;

    local procedure DoNothing()
    begin
    end;

    local procedure PerformDeselectOnAll(CodeunitID: Integer)
    begin
        LibraryPerformSelect.PerformDeselectOnAll(TestSuiteName, CodeunitID)
    end;

    local procedure PerformSelectOnAll(CodeunitID: Integer)
    begin
        LibraryPerformSelect.PerformSelectOnAll(TestSuiteName, CodeunitID)
    end;

    local procedure PerformSelectOnFailures(CodeunitID: Integer)
    begin
        LibraryPerformSelect.PerformSelectOnFailures(TestSuiteName, CodeunitID)
    end;

    local procedure NoFilterOnCodeunit(): Integer
    begin
        exit(0)
    end;

    local procedure SetFilterOn(CodeunitID: Integer): Integer
    begin
        exit(CodeunitID)
    end;

    local procedure IsEnabled(): Boolean
    begin
        exit(true)
    end;

    local procedure IsDisabled(): Boolean
    begin
        exit(false)
    end;

    local procedure VerifyDeselectOnAllIsDisabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifyDeselectOnAllIsDisabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifyDeselectOnAllIsEnabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifyDeselectOnAllIsEnabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifyRunIsNotSetOnAllFilteredTestCodeunitsAndFunctions(CodeunitID: Integer)
    begin
        VerifyRunIsNotSetOnAllTestCodeunitsAndFunctions(CodeunitID) // for the time being
    end;

    local procedure VerifyRunIsNotSetOnAllTestCodeunitsAndFunctions(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifyRunOnAll(TestSuiteName, CodeunitID, IsDisabled())
    end;

    local procedure VerifyRunIsSetOnAllFilteredTestCodeunitsAndFunctions(CodeunitID: Integer)
    begin
        VerifyRunIsSetOnAllTestCodeunitsAndFunctions(CodeunitID) // for the time being
    end;

    local procedure VerifyRunIsSetOnAllTestCodeunitsAndFunctions(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifyRunOnAll(TestSuiteName, CodeunitID, IsEnabled())
    end;

    local procedure VerifySelectOnAllIsDisabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifySelectOnAllIsDisabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifySelectOnAllIsEnabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifySelectOnAllIsEnabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifySelectOnFailuresIsDisabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifySelectOnFailuresIsDisabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifySelectOnFailuresIsEnabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifySelectOnFailuresIsEnabled(TestSuiteName, CodeunitID);
    end;

    local procedure VerifySelectOnNonFailuresIsDisabled(CodeunitID: Integer)
    begin
        LibraryVerifyActions.VerifySelectOnNonFailuresIsDisabled(TestSuiteName, CodeunitID);
    end;
}