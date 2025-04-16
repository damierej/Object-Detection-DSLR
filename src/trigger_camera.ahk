#SingleInstance Force  ; Ensure only one instance of the script runs

SetWorkingDir A_ScriptDir  ; Set the working directory to the script's directory

; Set the window title match mode to partial match and case-insensitive
SetTitleMatchMode 2
SetTitleMatchMode "Slow"

; Possible window titles to try
possibleTitles := ["EOS 90D", "EOS Utility", "Canon EOS Utility", "EOS Utility 3", "Canon EOS Utility 3"]

; Flag to track if the window was found
windowFound := false

; Try to find and activate the Canon EOS Utility window
for title in possibleTitles
{
    if WinExist(title)
    {
        WinActivate
        ; Wait for the window to become active, with a 2-second timeout
        if WinWaitActive(title, , 2)
        {
            windowFound := true
            break
        }
    }
}

; Check if the window was found and activated
if (!windowFound)
{
    ; Manually concatenate the array elements into a string
    titlesList := ""
    for index, title in possibleTitles
    {
        if (index > 1)
            titlesList .= ", "
        titlesList .= title
    }
    MsgBox "Could not activate Canon EOS Utility window! Please ensure the app is open and the window title matches one of: " titlesList
    ExitApp
}

; Simulate a mouse click on the "Shoot" button
Click 1801, 187

; Wait for the camera to capture the image
Sleep 2000

ExitApp  ; Exit the script after running