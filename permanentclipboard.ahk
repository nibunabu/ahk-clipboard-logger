#Persistent
OnClipboardChange("ClipboardChanged")
Return

ClipboardChanged(clipType)
{
    ; Get the current date in YYYY-MM-DD format
    CurrentDate := A_YYYY "-" A_MM "-" A_DD
    
    ; Create a log file path for the current date
	FilePath := "C:\Users\" A_UserName "\Documents\clipboardlogs\clipboard_log_" CurrentDate ".txt"    
    ; Check if the clipboard contains text (clipType 1 is for text)
    if (clipType = 1)
    {
        ; Append the clipboard content and timestamp to the file
        FileAppend, %A_Now% - %Clipboard%`n`n, %FilePath%
    }
}
