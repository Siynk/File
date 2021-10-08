#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance,Off
Suspend,On
CoordMode,Mouse,client
counterxxx:=1
;SetTimer,timertest,On
;SetTimer,loop2,On
DetectHiddenWindows,ON


FIleDelete,%A_Temp%\version.txt

loop{
ifExist,%A_Temp%\version.txt
{
   
}else {
   
   URLDownloadToFile,,%A_Temp%\version.txt
   break
}
}

sleep,300

FileRead,versionvalue,%A_Temp%\version.txt
FIleDelete,%A_Temp%\version.txt

if (versionvalue=""){
   
   
}else{
   msgbox,,version,Please get the latest version.
   ExitApp
}

Gui,Add,Button,x10 y10 w60 h30 gSetClicker1,Set Placer
Gui,Font,s12
Gui,Add,Edit,x+5 y10 w120 h30 vwindow gUpdater Number
Gui,Font
Gui,Add,Button,x+5 y10 w90 h30 gHidePlacer,Hide/Show
Gui,Add,button, x200 y85 h50 w90 vbutton1,Set Coordinate
Gui,Add,ListView,col3 x10 y55 w185 r5 vlistview1,X|Y|Delay

Gui,Add,Checkbox,x10 y185 w25 vCheckbox1 gSubmitter
Gui,Add,Checkbox,y+17 w25 vCheckbox2 gSubmitter 
Gui,Add,Checkbox,y+17 w25 vCheckbox3 gSubmitter 
Gui,Add,Checkbox,y+17 w25 vCheckbox4 gSubmitter 
Gui,Add,Checkbox,y+17 w25 vCheckbox5 gSubmitter 

Gui,Add,Button,x35 y182 w60 h20 gSetBreaker1,Breaker 1 
Gui,Add,Button,y+10 w60 h20 gSetBreaker2,Breaker 2
Gui,Add,Button,y+10 w60 h20 gSetBreaker3,Breaker 3
Gui,Add,Button,y+10 w60 h20 gSetBreaker4,Breaker 4
Gui,Add,Button,y+10 w60 h20 gSetBreaker5,Breaker 5

Gui,Add,Edit,x+5 y182 w80 h20 vwindow1 gSubmitter
Gui,Add,Edit,y+10 w80 h20 vwindow2 gSubmitter
Gui,Add,Edit,y+10 w80 h20 vwindow3 gSubmitter
Gui,Add,Edit,y+10 w80 h20 vwindow4 gSubmitter
Gui,Add,Edit,y+10 w80 h20 vwindow5 gSubmitter

Gui,Add,Button,x+5 y182 w50 h20 gHideClicker1,Hide
Gui,Add,Button,y+10 w50 h20 gHideClicker2,Hide
Gui,Add,Button,y+10 w50 h20 gHideClicker3,Hide
Gui,Add,Button,y+10 w50 h20 gHideClicker4,Hide
Gui,Add,Button,y+10 w50 h20 gHideClicker5,Hide

Gui,Add,Button,x+5 y182 w50 h20 gShowClicker1,Show
Gui,Add,Button,y+10 w50 h20 gShowClicker2,Show
Gui,Add,Button,y+10 w50 h20 gShowClicker3,Show
Gui,Add,Button,y+10 w50 h20 gShowClicker4,Show
Gui,Add,Button,y+10 w50 h20 gShowClicker5,Show



Gui,Add,Button,x20 y+25 w80 h40 gStart,Start
Gui,Add,Button,x+10 w80 h40 gShowAll, Show All
Gui,Add,Button,x+10 w80 h40 gCloseAll,Close All
Gui,Add,Button,y+10 x20 w80 h40 gStopper,Stop
Gui,Add,Button,x+10 w80 h40 gHideAll,Hide All
Gui,Add,Button,x+10 w80 h40 gReload,Reload

Gui,Add,StatusBar
SB_SetText("© 2021 Chan Jalmasco. All rights reserved.",1)
testfunction:=Func("Set_coord").Bind("listview1")
GuiControl,+g,button1,% testfunction
LV_ModifyCol(1,61)
LV_ModifyCol(2,61)
LV_ModifyCol(3,61)


Gui,Color,ffb6c1
Gui,Show,, Auto Place | Break
return


HidePlacer:
if (windowstatus=="Hidden"){
	WinShow,ahk_pid %window%
	windowstatus=Visible
}else {
	WinHide,ahk_pid %window%
	windowstatus=Hidden
}
	
return

WinHide,Ahk_pid %window%
windowstatus=Hidden

return


Updater:
Gui,Submit,NoHide
return

Submitter:
Gui,Submit,NoHide
return


CloseAll:
WinClose,ahk_pid %window%
WinClose,ahk_pid %window1%
WinClose,ahk_pid %window2%
WinClose,ahk_pid %window3%
WinClose,ahk_pid %window4%
WinClose,ahk_pid %window5%
return

HideAll:
WinHide,Ahk_pid %window%
WinHide,Ahk_pid %window1%
WinHide,Ahk_pid %window2%
WinHide,Ahk_pid %window3%
WinHide,Ahk_pid %window4%
WinHide,Ahk_pid %window5%
return

ShowAll:
WinShow,ahk_pid %window%
WinShow,ahk_pid %window1%
WinShow,ahk_pid %window2%
WinShow,ahk_pid %window3%
WinShow,ahk_pid %window4%
WinShow,ahk_pid %window5%
return



HideClicker1:
WinHide,ahk_pid %window1%
return
HideClicker2:
WinHide,ahk_pid %window2%
return
HideClicker3:
WinHide,ahk_pid %window3%
return
HideClicker4:
WinHide,ahk_pid %window4%
return
HideClicker5:
WinHide,ahk_pid %window5%
return

ShowClicker1:
WinShow,ahk_pid %window1%
return
ShowClicker2:
WinShow,ahk_pid %window2%
return
ShowClicker3:
WinShow,ahk_pid %window3%
return
ShowClicker4:
WinShow,ahk_pid %window4%
return
ShowClicker5:
WinShow,ahk_pid %window5%
return


SetClicker1:
isPressed:=0,i:= 0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Window%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(Left_Mouse==True&&isPressed==1)
{
	i++,isPressed:=0
	if(i>=2)
	{
		WinGet,Target_Window,PID,A
		GuiControl,,Window,%Target_Window%
		ToolTip,
		break
	}
}
}

Gui,Main:Submit,NoHide
return


SetBreaker1:
isPressed:=0,i:= 0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Window%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(Left_Mouse==True&&isPressed==1)
{
	i++,isPressed:=0
	if(i>=2)
	{
		WinGet,Target_Window,PID,A
		GuiControl,,Window1,%Target_Window%
		ToolTip,
		break
	}
}
}

Gui,Main:Submit,NoHide
return

SetBreaker2:
isPressed:=0,i:= 0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Window%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(Left_Mouse==True&&isPressed==1)
{
	i++,isPressed:=0
	if(i>=2)
	{
		WinGet,Target_Window,PID,A
		GuiControl,,Window2,%Target_Window%
		ToolTip,
		break
	}
}
}

Gui,Main:Submit,NoHide
return

SetBreaker3:
isPressed:=0,i:= 0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Window%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(Left_Mouse==True&&isPressed==1)
{
	i++,isPressed:=0
	if(i>=2)
	{
		WinGet,Target_Window,PID,A
		GuiControl,,Window3,%Target_Window%
		ToolTip,
		break
	}
}
}

Gui,Main:Submit,NoHide
return

SetBreaker4:
isPressed:=0,i:= 0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Window%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(Left_Mouse==True&&isPressed==1)
{
	i++,isPressed:=0
	if(i>=2)
	{
		WinGet,Target_Window,PID,A
		GuiControl,,Window4,%Target_Window%
		ToolTip,
		break
	}
}
}

Gui,Main:Submit,NoHide
return

SetBreaker5:
isPressed:=0,i:= 0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Window%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(Left_Mouse==True&&isPressed==1)
{
	i++,isPressed:=0
	if(i>=2)
	{
		WinGet,Target_Window,PID,A
		GuiControl,,Window5,%Target_Window%
		ToolTip,
		break
	}
}
}

Gui,Main:Submit,NoHide
return

Start:
stopper:=0


Clicker1counter :=1
Gui,ListView,listview1
Clicker1Rows := LV_GetCount()
;msgbox,%Rows%
Loop, %Clicker1Rows%
{
	LV_GetText(Data,A_Index, 1)
	Clicker1X%Clicker1counter%:=Data
	Clicker1Counter++
}
Clicker1counter :=1
Loop, %Clicker1Rows%
{
	LV_GetText(Data,A_Index, 2)
	Clicker1Y%Clicker1counter%:=Data
	Clicker1counter++
}
Clicker1counter :=1
Loop, %Clicker1Rows%
{
	LV_GetText(Data,A_Index, 3)
	Clicker1Delay%Clicker1counter%:=Data
	Clicker1counter++
	
}
Clicker1counter:=1



while (stopper!=1){
if (Checkbox1 ==1){
if (stopper!=1){
ControlSend,,{Space Down},ahk_PID %window1%
}else{
goto,stopperlabel
}
}
if (Checkbox2 ==1){
if (stopper!=1){
ControlSend,,{Space Down},ahk_PID %window2%
}else {
goto,stopperlabel
}
}
if (Checkbox3 ==1){
if (stopper!=1){
ControlSend,,{Space Down},ahk_PID %window3%
}else {
goto,stopperlabel
}
}
if (Checkbox4 ==1){
if (stopper!=1){
ControlSend,,{Space Down},ahk_PID %window4%
}else {
goto,stopperlabel
}
}
if (Checkbox5 ==1){
if (stopper!=1){
ControlSend,,{Space Down},ahk_PID %window5%
}else {
goto,stopperlabel
}
}


StartTime := A_TickCount
loop{
	ElapsedTime := A_TickCount - StartTime

	if (ElapsedTime<7000){
		if (stopper!=1){
			clicker1x:=Clicker1X%Clicker1counter%
		}else {
			goto,stopperlabel
		}
		if (stopper!=1){
			clicker1y:=Clicker1Y%Clicker1counter%
		}else {
			goto,stopperlabel
		}
		if (stoper!=1){
			clicker1delay:=Clicker1Delay%Clicker1counter%
		}else {
			goto,stopperlabel
		}
		if (stopper!=1){
			ControlClick,,ahk_pid %window%,,Left,,X%clicker1x% Y%clicker1y% NA
		}else {
			goto,stopperlabel
		}
		if (stopper!=1){
			sleep,Clicker1Delay%Clicker1counter%
		}else {
			goto,stopperlabel
		}
		if (stopper!=1){
			Clicker1counter++
		}else {
			goto,stopperlabel
		}
		if(Clicker1counter>Clicker1Rows){
			;msgbox,done
			Clicker1Counter:=1
		}
	}else {
		break
	}	
	
}
	
	
	
}











if (Checkbox1 ==1){
if (stopper!=1){
ControlSend,,{Space Up},%window1%
}else {
goto,stopperlabel
}
}
if (Checkbox2 ==1){
if (stopper!=1){
ControlSend,,{Space Up},%window2%
}else {
goto,stopperlabel
}
}
if (Checkbox3 ==1){
if (stopper!=1){
ControlSend,,{Space Up},%window3%
}else {
goto,stopperlabel
}
}
if (Checkbox4 ==1){
if (stopper!=1){
ControlSend,,{Space Up},%window4%
}else {
goto,stopperlabel
}
}
if (Checkbox5 ==1){
if (stopper!=1){
ControlSend,,{Space Up},%window5%
}else {
goto,stopperlabel
}
}


Stopper:
stopper:=1
return
stopperlabel:
if (window1!=""){
ControlSend,,{Space Up},ahk_pid %window1%
}
if (window2!=""){
ControlSend,,{Space Up},ahk_pid %window2%
}
if (window3!=""){
ControlSend,,{Space Up},ahk_pid %window3%
}
if (window4!=""){
ControlSend,,{Space Up},ahk_pid %window4%
}
if (window5!=""){
ControlSend,,{Space Up},ahk_pid %window5%
}
return

Set_Coord(value){
	Gui,ListView,%value%
	LV_Delete()
	isPressed:=0,i:=0
	Loop{
		LeftMouse:=GetKeyState("LButton")
		WinGetTitle,Temp_Window,A
		ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Window%
		if(LeftMouse==False&&isPressed==0)
		isPressed:=1
		else if(LeftMouse==True&&isPressed==1)
		{
			i++,isPressed:=0
			if(i>=2)
			{
				MouseGetPos,%value%x,%value%Y
				Winget,lastpid,pid,A
				SetBatchLines,-1
				CoordMode,Mouse,Screen
				MouseGetPos,MouseX,MouseY
				CoordMode,Mouse,Client
				ToolTip,
				;delayvar=%value%delay
				Gui +LastFound +OwnDialogs +AlwaysOnTop
				winactivate,auto clicker 2
				;Mousemove,0,0
				;BlockInput,MouseMove
				
				Inputbox,%value%delay,Prompt,Do you want to add another Coordinate?`nDelay after the click,,200,200,,,,,100
				wingetpos,promptx,prompty,promptw,prompth,prompt
				If ErrorLevel
				{
					Gui,ListView,%value%
					LV_Add(,%value%X,%value%Y,%value%delay)
					CoordMode,Mouse,Screen
					MouseMove,MouseX,MouseY
					CoordMode,Mouse,Client
					SetBatchLines,10
					;BlockInput,MouseMoveOff
					WinActivate,ahk_pid %lastpid%
					break
				}else {
					Gui,ListView,%value%
					LV_Add(,%value%X,%value%Y,%value%delay)
					CoordMode,Mouse,Screen
					MouseMove,MouseX,MouseY
					CoordMode,Mouse,Client
					SetBatchLines,10
					;BlockInput,MouseMoveOff
					WinActivate,ahk_pid %lastpid%
				}

			}
		}
	}
	return Target_Window
	}
	
Reload:
gosub,showall
Reload

GuiClose:
Gui +LastFound +OwnDialogs +AlwaysOnTop
msgbox,260,Prompt,Are you sure you want to Exit Program?`n
	IfMsgBox, Yes
	{
		gosub,ShowAll
		ExitApp
	}
return
