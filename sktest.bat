@set @junk=1 /*
@echo off
cscript //nologo //E:jscript %0 %*
goto :eof
*/

x = WScript.Arguments

@if (@CodeSection == @Batch) @then

    CScript //nologo //E:JScript "%~F0" {L}
    
@end
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(x(0));