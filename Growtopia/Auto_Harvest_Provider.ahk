#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode,Mouse,Client
#SingleInstance,Force
DetectHiddenWindows,On

Gui,Add,Button,x10 y10 h30 w100 gSetWindow,Set Window
Gui,Font,s13
Gui,Add,Edit,x+10 h30 w100 -VScroll number center gUpdater vWinPID,
Gui,Font
Gui,Add,Button,x10 y50 h30 w100 gCharacter,Set Character
Gui,Font,s13
Gui,Add,Edit,x+10 h30 w100 -VScroll number center vCharacter,
Gui,Font
Gui,Add,Button,x10 y90 h30 w100 vStartButton gStart,Start
Gui,Add,Button,x+10 h30 w100 vStopButton gStop,Stop
Gui,Main:Add,Text,x10 y+10 vGemoTimer,Gemonade Timer`:0`

Gui,Add,StatusBar
SB_SetText("Chan Jalmasco. All rights reserved.",1)
Gui,Color,FFB6C1

Gui,Show,,Auto Harvest Provider
Gui,Submit,Nohide
return


Updater:
Gui,Submit,Nohide
return

GuiClose:
ExitApp
return

GemoTimer:
GemoElapsedTimer:=A_TickCount - GemoStartTime
GuiControl,Main:,GemoTimer,GemoTimer`:%GemoElapsedTimer%
return

Character:
isPressed:=0,i:= 0
Loop
{
    Left_Mouse:=GetKeyState("LButton")
    MouseGetPos,TempX,TempY
    ToolTip,Click twice to set Character Coordinates`.`n%TempX%`,%TempY%
    if(Left_Mouse==False&&isPressed==0)
    isPressed:=1
    else if(Left_Mouse==True&&isPressed==1)
    {
        i++,isPressed:=0
        if(i>=2)
        {
            MouseGetPos,CharacterX,CharacterY
            GuiControl,,Character,%CharacterX%,%CharacterY%
            tooltip,
            break
        }
    }
    
 }
return


SetWindow:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	WinGetTitle,tempwindow,A
	ToolTip,Left Click on the target window twice to set `n`n Current Window: %tempwindow%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			WinGet,windowpid,pid,A
			GuiControl,,winpid,%windowpid%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}
return

Stop:
Stop:=true
tooltip,Stopping... Please wait.
sleep,2000
tooltip,
GuiControl,Enable,StartButton
GuiControl,Disable,StopButton
return

Start:
GuiControl,Enable,StopButton
GuiControl,Disable,StartButton
stop:=false

GemoStartTime:=A_TickCount	;Start Timer 
setTimer,GemoTimer,1

loop{

GemoElapsedTimer:=A_tickcount - GemoStartTime
if (GemoElapsedTimer > 250){	;Check if timer is 30mins.
	if not stop{
		SendClick(CharacterX,CharacterY,winpid)
		sleep,50
		GemoStartTime:=A_TickCount	;Restart Gemo Timer
	}else{
		goto,stopper
	}
}

}
return

stopper:
SetTimer,GemoTimer,Off
GuiControl,,GemoTimer,GemoTimer:0
return





SendClick(X,Y,pid){
ControlClick,,ahk_pid %pid%,,Left,,X%X% Y%Y% NA	
return
}
return