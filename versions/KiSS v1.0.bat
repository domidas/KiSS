@if (@CodeSection == @Batch) @then
@echo off

	::Defines variable SendKeys to run JScript interpreter 
    set SendKeys=CScript //nologo //E:JScript "%~F0"
    cls
	start chrome
	    timeout /t 3 /nobreak >nul
	%SendKeys% {Enter}
	%SendKeys% {CAPSLOCK}
	%SendKeys% {h}
	%SendKeys% {t}
	%SendKeys% {t}
	%SendKeys% {p}
	%SendKeys% {s}
	%SendKeys% {:}
	%SendKeys% {/}
	%SendKeys% {/}
	%SendKeys% {w}
	%SendKeys% {w}
	%SendKeys% {w}
	%SendKeys% {.}
	%SendKeys% {y}
	%SendKeys% {o}
	%SendKeys% {u}
	%SendKeys% {t}
	%SendKeys% {u}
	%SendKeys% {b}
	%SendKeys% {e}
	%SendKeys% {.}
	%SendKeys% {c}
	%SendKeys% {o}
	%SendKeys% {m}
	%SendKeys% {/}
	%SendKeys% {w}
	%SendKeys% {a}
	%SendKeys% {t}
	%SendKeys% {c}
	%SendKeys% {h}
	%SendKeys% {?}
	%SendKeys% {v}
	%SendKeys% {=}
	%SendKeys% {d}
	%SendKeys% {Q}
	%SendKeys% {w}
	%SendKeys% {4}
	%SendKeys% {w}
	%SendKeys% {9}
	%SendKeys% {W}
	%SendKeys% {g}
	%SendKeys% {X}
	%SendKeys% {c}
	%SendKeys% {Q}
	%SendKeys% {ENTER}
@end

// 	creates variable for the WScript.Shell object
var WshShell = WScript.CreateObject("WScript.Shell");

// invokes the variable, returning success with 0
WshShell.SendKeys(WScript.Arguments(0));
