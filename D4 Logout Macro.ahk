#NoEnv
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2

; Store the window title as Diablo IV.
GameWindowTitle := "Diablo IV"

; Define the hotkey to trigger the logout.
F3::
    IfWinExist, %GameWindowTitle%
    {
        WinGet, DiabloPID, PID, %GameWindowTitle%
        Process, Close, %DiabloPID%
    }
Return
