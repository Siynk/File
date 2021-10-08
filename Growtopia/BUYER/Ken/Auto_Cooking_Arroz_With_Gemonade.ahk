#SingleInstance,Force
DetectHiddenWindows,On
CoordMode,Mouse,Client


FIleDelete,%A_Temp%\version.txt

loop{
ifExist,%A_Temp%\version.txt
{
   
}else {
   
   URLDownloadToFile,https://raw.githubusercontent.com/Siynk/Version/main/Ken.txt,%A_Temp%\version.txt
   break
}
}

sleep,300

FileRead,versionvalue,%A_Temp%\version.txt
FIleDelete,%A_Temp%\version.txt

if (versionvalue="KEN-10-04-2021"){
   
   
}else{
   msgbox,,version,Please get the latest version.
   ExitApp
}

Gui,Main:Add,Button,x10 y10 w50 h30 gSetWindow,Set Window
Gui,Main:Font,s12
Gui,Main:Add,Edit,x+1 w55 h30 vwinpid
Gui,Main:FOnt
Gui,Main:Add,Button,x10 y45 w105 h30 gSetOvens,Set Ovens
Gui,Main:Add,ListView,y+5 w105 h270 vOvenList,x|y 
Gui,Main:Add,Button,x+5 y10 w75 h30 gSetRice,Set Rice
Gui,Main:Add,Button,y+10 w75 h30 gSetOnion,Set Onion
Gui,Main:Add,Button,y+10 w75 h30 gSetChicken,Set Chicken Meat
Gui,Main:Add,Button,y+10 w75 h30 gSetTomato,Set Tomato
Gui,Main:Add,Button,y+10 w75 h30 gSetSalt,Set Salt (Optional)
Gui,Main:Add,Button,y+10 w75 h30 gSetPepper,Set Pepper (Optional)
Gui,Main:Add,Button,y+10 w75 h30 gSetFist,Set Fist
Gui,Main:Add,Button,y+10 w75 h30 gSetLowButton,Set Low Button
Gui,Main:Add,Button,y+10 w75 h30 gSetGemonade,Set Gemonade
Gui,Main:Add,Button,y+10 w75 h30 gSetCharacter,Set Character
Gui,Main:Font,s12
Gui,Main:Add,Edit,x+5 y10 w100 h30 Center vRiceedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vOnionedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vChickenedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vTomatoedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vsaltedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vpepperedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vfistedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vlowbuttonedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vgemonadeedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vcharacteredit
Gui,Main:Font
Gui,Main:Add,Button,x+5 y10 w40 h30 gClearRice,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearOnion,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearChicken,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearTomato,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearSalt,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearPepper,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearFist,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearLowButton,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearGemonade,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearCharacter,Clear

Gui,Main:Add,Button,x10 y360 w105 h40 gRemove,Remove Coordinate
Gui,Main:Add,Button,x10 y+10 w105 h40 gStart vStartButton,Start
Gui,Main:Add,Button,x+10 w105 h40 gHideOrShow,Hide/Show
Gui,Main:Add,Button,x+10 w105 h40 gHelp,Help
Gui,Main:Add,Button,y+10 x10 w105 h40 gStop vStopButton Disabled,Stop
Gui,Main:Add,Button,x+10 w105 h40 gSettings,Settings
Gui,Main:Add,Button,x+10 w105 h40 greload,Reload
Gui,Main:Add,Text,x10 y+10 vTimer,Timer`:0`            `
Gui,Main:Add,Text,x10 y+10 vGemoTimer,Gemonade Timer`:0`            `

Gui,Main:default
LV_ModifyCol(1,50)
LV_ModifyCol(2,50)

Gui,Main:Color,FFB6C1
Gui,Main:Show,,Auto Cook Arroz Con Pollo




Gui,Settings:Add,Groupbox,x10 y10 w220 h140,Delays
Gui,Settings:Add,Text,x20 y30, Delay when opening and closing Oven
Gui,Settings:Add,Edit,y+5 x20 w120 h25 Number Limit6 vovendelay gUpdater,1500
Gui,Settings:Add,Text,x20 y+20, Delay when putting ingredients to the oven
Gui,Settings:Add,Edit,y+5 x20 w120 h25 Number Limit6 vingredientdelay gUpdater,2000

Gui,Settings:Add,Groupbox,x10 y+20 w220 h50,Loops
Gui,Settings:Add,Edit,x20 y175 w60 h20 vLoopCount gUpdateLoop Number,0
Gui,Settings:Add,UpDown,gUpdateLoop
Gui,Settings:Add,Text,x+10,0 = infinite

Gui,Settings:Color,FFB6C1
Gui,Settings:Submit,NoHide


Gui,MainGUI:Submit,NoHide
gosub,updateloop



return

Help:
MsgBox,,Help,If have question DM Chichiya | Zinc on Discord Server.
return


UpdateLoop:
Gui,Settings:Submit,NoHide
if (LoopCount==0){
	LoopCount:=99999999999
}

return



Updater:
Gui,Settings:Submit,NoHide
return


MainGuiClose:
ExitApp
return


SettingsGUIClose:
Gui,Settings:Cancel
Gui,Main:-Disabled 
Gui,Main:Show
return


Settings:
Gui,Settings: +ownerMain +AlwaysOnTop 
Gui,Main:+Disabled
Gui,Settings:Show,,Settings

return


ClearGemonade:
GemonadeX:=
GemonadeY:=
GuiControl,,GemonadeEdit,

return

ClearCharacter:
CharacterX:=
CharacterY:=
GuiControl,,CharacterEdit,

return


ClearLowButton:
LowButtonX:=
LowButtonY:=
GuiControl,,LowButtonEdit
return


ClearFist:
FistX:=
FistY:=
GuiControl,,FistEdit,

return


ClearTomato:
TomatoX:=
TomatoY:=
GuiControl,,TomatoEdit,
return

ClearSalt:
SaltX:=
SaltY:=
GuiControl,,SaltEdit,
return

ClearPepper:
PepperX:=
PepperY:=
GuiControl,,PepperEdit,
return

ClearChicken:
ChickenX:=
ChickenY:=
GuiControl,,ChickenEdit,
return

ClearOnion:
OnionX:=
OnionY:=
GuiControl,,OnionEdit,

return


ClearRice:
RiceX:=
RiceY:=
GuiControl,,RiceEdit,
return

Remove:
LV_DeleteSelectedRows("OvenList")
return


UpdateTimer:
ElapsedTimer:=A_TickCount - StartTime
GuiControl,Main:,Timer,Timer`:%ElapsedTimer%
return

GemoTimer:
GemoElapsedTimer:=A_TickCount - GemoStartTime
GuiControl,Main:,GemoTimer,GemoTimer`:%GemoElapsedTimer%
return

Sound:
SoundBeep, 900, 200
return


Reload:
Reload
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
OvenCounter :=1
Gui,Main:ListView,OvenList
OvenRows := LV_GetCount()
Loop, %OvenRows%
{
	LV_GetText(Data,A_Index, 1)
	OvenX%OvenCounter%:=Data
	OvenCounter++
}
OvenCounter :=1
Loop, %OvenRows%
{
	LV_GetText(Data,A_Index, 2)
	OvenY%OvenCounter%:=Data
	OvenCounter++
}

GemoStartTime:=A_TickCount	;Start Timer 
setTimer,GemoTimer,1


loop,%LoopCOunt%{
	
GemoElapsedTimer:=A_tickcount - GemoStartTime
if (GemoElapsedTimer > 1800000){	;Check if timer is 30mins.
	if not stop{
		SendClick(GemonadeX,GemonadeY,winpid)
		sleep,50
		SendClick(CharacterX,CharacterY,winpid)
		sleep,200
		GemoStartTime:=A_TickCount	;Restart Gemo Timer
	}else{
		goto,stopper
	}
}

counter:=1
MagicCounter:=0
loop,%OvenRows%{	; Add Rice to Ovens
	Xcoord:=OvenX%counter%
	Ycoord:=OvenY%counter%
	
	if not stop{
		ControlClick,,ahk_pid %winpid%,,Left,,X%RiceX% Y%RiceY% NA	;Click on Rice
	}else {
		goto,stopper
	}
	sleep,50
	if not stop {
		ControlClick,,ahk_pid %winpid%,,Left,,X%Xcoord% Y%Ycoord% NA	;Click on Oven
	}else {
		goto,stopper
	}
	sleep,%ovendelay% ;ovendelay
	if not stop {
		ControlClick,,ahk_pid %winpid%,,Left,,X%LowButtonX% Y%LowButtonY% NA	;Click on Low Button
	}else {
		goto,stopper
	}
	
	if (MagicCounter<1){
		StartTime:=A_TickCount	;Start Timer 
		setTimer,UpdateTimer,1
		MagicCounter++
	}
	ElapsedTime:=A_TickCount-StartTime
	
	sleep,500
	counter++
}


loop{	;Wait for Timer to reach 33.7sec
	ElapsedTime := A_TickCount - StartTime
	if not stop{
		if (ElapsedTime>33700){
			break
		}
	}else{
		goto,stopper
	}
}


OnionTimer:=A_TickCount

counter:=1

loop,%OvenRows%{	; Add Onion to Ovens
	OnionTimerElapse:=A_TickCount-OnionTimer
	Xcoord:=OvenX%counter%
	Ycoord:=OvenY%counter%
	if not stop{
		ControlClick,,ahk_pid %winpid%,,Left,,X%OnionX% Y%OnionY% NA	;Click on Onion
		sleep,50
		ControlClick,,ahk_pid %winpid%,,Left,,X%Xcoord% Y%Ycoord% NA	;Click on Oven
		sleep,50
		ControlClick,,ahk_pid %winpid%,,Left,,X%ChickenX% Y%ChickenY% NA	;Click on Chicken
		sleep,300
		ControlClick,,ahk_pid %winpid%,,Left,,X%Xcoord% Y%Ycoord% NA	;Click on Oven
	}else{
		goto,stopper
	}
	loop {
		OnionTimerElapse:=A_TickCount-OnionTimer
		if (OnionTimerElapse > ingredientdelay){
			OnionTimer:=A_TickCount
			break
		}else {
			
		}
	}
	counter++
}


ControlClick,,ahk_pid %winpid%,,Left,,X%TomatoX% Y%TomatoY% NA	;Click on Tomato
loop{	;Wait for Timer to reach 1min and 10sec
	ElapsedTime := A_TickCount - StartTime
	if not stop{
		if (ElapsedTime>70000){
			break
		}
	}else{
		goto,stopper
	}
	
}

counter:=1
loop,%OvenRows%{	; Add Tomato to Ovens
	Xcoord:=OvenX%counter%
	Ycoord:=OvenY%counter%
	if not stop {
		ControlClick,,ahk_pid %winpid%,,Left,,X%Xcoord% Y%Ycoord% NA	;Click on Oven
	}else {
		goto,stopper
	}
	if (A_Index!=OvenRows){
		sleep,%ingredientdelay%
	}
	counter++
}

sleep,200

loop{	;Wait for Timer to reach 1min and 40sec
	ElapsedTime := A_TickCount - StartTime
	if not stop{
		if (ElapsedTime>100000){
			break
		}
	}else{
		goto,stopper
	}
}


counter:=1
ControlClick,,ahk_pid %winpid%,,Left,,X%FistX% Y%FistY% NA	;Click on Fist
sleep,50
loop,%OvenRows%{
	Xcoord:=OvenX%counter%
	Ycoord:=OvenY%counter%
	if not stop{
		ControlClick,,ahk_pid %winpid%,,Left,,X%Xcoord% Y%Ycoord% NA	;Click on Oven
	}else{
			goto,stopper
	}
	sleep,%ingredientdelay%
	counter++
}

SetTimer,UpdateTimer,Off
GuiControl,Main:,Timer,Timer:0
sleep,500
}
return






stopper:
SetTimer,UpdateTimer,Off
GuiControl,,Timer,Timer:0
SetTimer,GemoTimer,Off
GuiControl,,GemoTimer,GemoTimer:0
return





















HideOrShow:
if (windowstatus=="Hidden"){
	WinShow,ahk_pid %winpid%
	windowstatus=Visible
}else {
	WinHide,ahk_pid %winpid%
	windowstatus=Hidden
}
return



SetLowButton:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Low Button`n`nLeft Click on the Low Button twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,LowButtonX,LowButtonY
			GuiControl,,LowButtonEdit,%LowButtonX%`,%LowButtonY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return


SetGemonade:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Gemonade`n`nLeft Click on the Gemonade twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,GemonadeX,GemonadeY
			GuiControl,,GemonadeEdit,%GemonadeX%`,%GemonadeY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return


SetCharacter:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Character`n`nLeft Click on the Character twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,CharacterX,CharacterY
			GuiControl,,CharacterEdit,%CharacterX%`,%CharacterY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return

SetFist:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Fist`n`nLeft Click on the Fist twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,FistX,FistY
			GuiControl,,FistEdit,%FistX%`,%FistY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return




SetTomato:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Tomato`n`nLeft Click on the Tomato twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,TomatoX,TomatoY
			GuiControl,,TomatoEdit,%TomatoX%`,%TomatoY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return



SetChicken:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Chicken`n`nLeft Click on the Chicken twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,ChickenX,ChickenY
			GuiControl,,ChickenEdit,%ChickenX%`,%ChickenY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return



SetOnion:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Onion`n`nLeft Click on the Onion twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,OnionX,OnionY
			GuiControl,,OnionEdit,%OnionX%`,%OnionY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return



SetRice:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Rice`n`nLeft Click on the Rice twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,RiceX,RiceY
			GuiControl,,RiceEdit,%RiceX%`,%RiceY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return

SetSalt:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Salt`n`nLeft Click on the Flour twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,SaltX,SaltY
			GuiControl,,SaltEdit,%SaltX%`,%SaltY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return

SetPepper:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Pepper`n`nLeft Click on the Flour twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,PepperX,PepperY
			GuiControl,,PepperEdit,%PepperX%`,%PepperY%
			Gui,Main:Submit,NoHide
			ToolTip,
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

SetOvens:
Inputbox,HowManyOven,How Many Oven,How many oven do you want to use`? `(1-15)
If (HowManyOven<16){
	loop,%HowManyOven%{
		AddCoordinateXY("OvenList")
	}
}else {
	msgbox,,Prompt,You can not use more than 15 ovens.
}

return

AddCoordinateXY(NameOfListView){
	Gui,MainGUI:ListView,%NameOfListView%
	isPressed:=0,i:= 0
	Loop
	{
		Left_Mouse:=GetKeyState("LButton")
		MouseGetPos,TempX,TempY
		ToolTip,Click twice to set Coordinates`.`n%TempX%`,%TempY%
		if(Left_Mouse==False&&isPressed==0)
		isPressed:=1
		else if(Left_Mouse==True&&isPressed==1)
		{
			i++,isPressed:=0
			if(i>=2)
			{
				MouseGetPos,TempX,TempY
				LV_Add(,TempX,TempY)
				tooltip,
				break
			}
		}
		
	 }
     Gui,MainGUI:Submit,NoHide
		
}

LV_DeleteSelectedRows(listviewname) { ; Deletes selected rows and returns number of deleted rows. by Learning one
global
Gui,MainGUI:ListView,%listviewname%
SelectedRowsCount := 0
SelectedRows:=
;=== Get SelectedRows ===
RowNumber := 0
Loop
{
RowNumber := LV_GetNext(RowNumber)
if !RowNumber
break
SelectedRows .= RowNumber "|"
SelectedRowsCount ++
}

StringTrimRight, SelectedRows, SelectedRows, 1
TotalRows := LV_GetCount() ; LV_GetCount() returns the total number of rows in the control

If (SelectedRowsCount = TotalRows) { ; all selected
LV_Delete() ; If the parameter is omitted, all rows in the ListView are deleted
return SelectedRowsCount
}
else if (SelectedRowsCount = 0) ; nothing selected
return 0
else {
Loop, parse, SelectedRows, |
{
if (A_index = 1)
LV_Delete(A_LoopField)
else
LV_Delete(A_LoopField-A_Index+1)
}

Gui,MainGUI:Submit,NoHide
return SelectedRowsCount
}
}

SendClick(X,Y,pid){
ControlClick,,ahk_pid %pid%,,Left,,X%X% Y%Y% NA	
	
return
}
return