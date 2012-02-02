program SimplesTDD;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$Define ISCONSOLE}
{$Define XMLOUTPUT}

{$IfDef ISCONSOLE}
  {$APPTYPE CONSOLE}
{$EndIf}

uses
  Sysutils,
  Forms,
  TestFramework,
  GUITestRunner,
  TextTestRunner,
  FinalBuilder.XMLTestRunner in 'C:\Program Files\FinalBuilder 7\DUnit\FinalBuilder.XMLTestRunner.pas',
  TestDaoRemessa in 'TestDaoRemessa.pas',
  DaoRemessa in '..\Dao\DaoRemessa.pas';

{$IfDef XMLOUTPUT}
var
  OutputFile : string = DEFAULT_FILENAME;

var
  ConfigFile : string;
{$EndIf}

{$IFDEF ISCONSOLE}
var
  ExitBehavior: TRunnerExitBehavior;
{$EndIf}

begin
  {$IfDef ISCONSOLE}
    {$IfDef XMLOUTPUT}
      if ConfigFile <> '' then
      begin
        RegisteredTests.LoadConfiguration(ConfigFile, False, True);
        WriteLn('Loaded config file ' + ConfigFile);
      end;
      if ParamCount > 0 then
        OutputFile := ParamStr(1);
      WriteLn('Writing output to ' + OutputFile);
      WriteLn('Running ' + IntToStr(RegisteredTests.CountEnabledTestCases) + ' of ' + IntToStr(RegisteredTests.CountTestCases) + ' test cases');
      FinalBuilder.XMLTestRunner.RunRegisteredTests(OutputFile);
    {$else}
      WriteLn('To run with rxbPause, use -p switch');
      WriteLn('To run with rxbHaltOnFailures, use -h switch');
      WriteLn('No switch runs as rxbContinue');

      if FindCmdLineSwitch('p', ['-', '/'], true) then
        ExitBehavior := rxbPause
      else if FindCmdLineSwitch('h', ['-', '/'], true) then
        ExitBehavior := rxbHaltOnFailures
      else
        ExitBehavior := rxbContinue;
      TextTestRunner.RunRegisteredTests(ExitBehavior);
    {$endif}
  {$Else}
    Application.Initialize;
    TGUITestRunner.RunRegisteredTests;
  {$EndIf}
end.


