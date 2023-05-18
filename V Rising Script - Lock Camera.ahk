#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive, VRising

; Variable to track the state of the right mouse button
Global rightButtonPressed := false

; Variable to track the pause state
Global pauseState := false

; Map Mouse4 button to toggle the state of the right mouse button
XButton1::
    if pauseState
        return
    
    rightButtonPressed := !rightButtonPressed
    
    if rightButtonPressed
    {
        ; Get the center coordinates of the screen
        SysGet, screenWidth, 78
        SysGet, screenHeight, 79
        centerX := screenWidth // 2
        centerY := screenHeight // 2
        
        ; Move the mouse to the center of the screen
        MouseMove, centerX, centerY, 0
        
        ; Hold the right mouse button
        Click right, down
    }
    else
    {
        ; Release the right mouse button
        Click right, up
    }
Return

; Map the R key to pause/unpause the script
r::
    if rightButtonPressed
    {
        ; Release the right mouse button
        Click right, up
        
        ; Set the pause state to true
        pauseState := true
        
        ; Press the R key
        Send {R down}
        Sleep 50
        Send {R up}
        
        ; Pause for 1 second
        Sleep 1000
        
        ; Set the pause state to false
        pauseState := false
        
    if rightButtonPressed
      {
         ; Get the center coordinates of the screen
         SysGet, screenWidth, 78
         SysGet, screenHeight, 79
         centerX := screenWidth // 2
         centerY := screenHeight // 2
        
         ; Move the mouse to the center of the screen
         MouseMove, centerX, centerY, 0
        

         ; Hold the right mouse button again
         Click right, down
       }
    }
    else
    {
       ; Press the R key without pausing the right mouse button
       Send {R}
    }
Return

; Map the C key to pause/unpause the script
c::
    if rightButtonPressed
    {
        ; Release the right mouse button
        Click right, up
        
        ; Set the pause state to true
        pauseState := true
        
        ; Press the C key
        Send {C down}
        Sleep 50
        Send {C up}
        
        ; Pause for 1 second
        Sleep 1000
        
        ; Set the pause state to false
        pauseState := false
        
    if rightButtonPressed
      {
         ; Get the center coordinates of the screen
         SysGet, screenWidth, 78
         SysGet, screenHeight, 79
         centerX := screenWidth // 2
         centerY := screenHeight // 2
        
         ; Move the mouse to the center of the screen
         MouseMove, centerX, centerY, 0
        

         ; Hold the right mouse button again
         Click right, down
       }
    }
    else
    {
       ; Press the C key without pausing the right mouse button
       Send {C}
    }
Return

; Map the Q key to pause/unpause the script
q::
    if rightButtonPressed
    {
        ; Release the right mouse button
        Click right, up
        
        ; Set the pause state to true
        pauseState := true
        
        ; Press the Q key
        Send {Q down}
        Sleep 50
        Send {Q up}
        
        ; Pause for 1 second
        Sleep 1000
        
        ; Set the pause state to false
        pauseState := false
        
    if rightButtonPressed
      {
         ; Get the center coordinates of the screen
         SysGet, screenWidth, 78
         SysGet, screenHeight, 79
         centerX := screenWidth // 2
         centerY := screenHeight // 2
        
         ; Move the mouse to the center of the screen
         MouseMove, centerX, centerY, 0
        

         ; Hold the right mouse button again
         Click right, down
       }
    }
    else
    {
       ; Press the Q key without pausing the right mouse button
       Send {Q}
    }
Return

; Map the F key to pause/unpause the script
f::
    if rightButtonPressed
    {
        ; Release the right mouse button
        Click right, up
        
        ; Set the pause state to true
        pauseState := true
        
        ; Press the F key
        Send {F down}
        Sleep 50
        Send {F up}
        
        ; Pause for 1 second
        Sleep 1000
        
        ; Set the pause state to false
        pauseState := false
      
    if rightButtonPressed
      {
         ; Get the center coordinates of the screen
         SysGet, screenWidth, 78
         SysGet, screenHeight, 79
         centerX := screenWidth // 2
         centerY := screenHeight // 2
        
         ; Move the mouse to the center of the screen
         MouseMove, centerX, centerY, 0
        

         ; Hold the right mouse button again
         Click right, down
       }
    }
    else
    {
       ; Press the F key without pausing the right mouse button
       Send {F}
    }
Return

; Map the T key to pause/unpause the script
t::
    if rightButtonPressed
    {
        ; Release the right mouse button
        Click right, up
        
        ; Set the pause state to true
        pauseState := true
        
        ; Press the T key
        Send {T down}
        Sleep 50
        Send {T up}
        
        ; Pause for 1 second
        Sleep 1000
        
        ; Set the pause state to false
        pauseState := false
        
    if rightButtonPressed
      {
         ; Get the center coordinates of the screen
         SysGet, screenWidth, 78
         SysGet, screenHeight, 79
         centerX := screenWidth // 2
         centerY := screenHeight // 2
        
         ; Move the mouse to the center of the screen
         MouseMove, centerX, centerY, 0
        

         ; Hold the right mouse button again
         Click right, down
       }
    }
    else
    {
       ; Press the T key without pausing the right mouse button
       Send {T}
    }
Return

#IfWinActive
