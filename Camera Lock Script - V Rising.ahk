; Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv

; Enable warnings to assist with detecting common errors.
; #Warn

; Recommended for new scripts due to its superior speed and reliability.
SendMode Input

; Ensures a consistent starting directory.
SetWorkingDir %A_ScriptDir%

; Recommended for performance.
#SingleInstance, Force
SetBatchLines, -1

; Ensure script only works when VRising process is running.
#IfWinActive, VRising

; Variable to track the state of the right mouse button.
Global rightButtonPressed := false

; Variable to track the pause state.
Global pauseState := false

; Store the center coordinates of active monitor where the game is running. 
SysGet, monitorCount, MonitorCount
SysGet, activeMonitor, Monitor, %A_Index%
activeMonitorX := activeMonitorLeft + (activeMonitorRight - activeMonitorLeft) // 2
activeMonitorY := activeMonitorTop + (activeMonitorBottom - activeMonitorTop) // 2

; Map Mouse4 button to toggle the state of the right mouse button.
XButton1::
    if pauseState
        return

    rightButtonPressed := !rightButtonPressed

    if rightButtonPressed
    {
        ; Move the mouse to the center of the active monitor where the game is running.
        MouseMove, activeMonitorX, activeMonitorY, 0

        ; Hold the right mouse button.
        Click right, down
    }
    else
    {
        ; Release the right mouse button.
        Click right, up
    }
Return

; Handle the hotkeys.
r::
c::
q::
f::
t::
LCtrl::
LAlt::
    if (pauseState)
        return

    key := SubStr(A_ThisHotkey, 1)
    
    if (rightButtonPressed)
    {
        ; Release the right mouse button.
        Click right, up
    }
    
    ; Set the pause state to true.
    pauseState := true
    
    ; Press the key.
    SendInput {%key% down}

    ; Wait for the physical release of the key.
    KeyWait, %key%

    ; Release the key.
    SendInput {%key% up}

    ; Set the pause state to false.
    pauseState := false

    if (rightButtonPressed)
    {
        ; Move the mouse to the center of the active monitor where the game is running.
        MouseMove, activeMonitorX, activeMonitorY, 0

        ; Hold the right mouse button again.
        Click right, down

        ; Sleep for a short duration to avoid excessive loop iterations.
        Sleep 10
    }
Return

#IfWinActive
