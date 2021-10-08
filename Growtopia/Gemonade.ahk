#SingleInstance,Force
DetectHiddenWindows,On
CoordMode,Mouse,Client

Gui,Main:Add,Button,x10 y10 w50 h30 gSetWindow,Set Window
Gui,Main:Font,s12
Gui,Main:Add,Edit,x+5 w55 h30 vwinpid
Gui,Main:FOnt
Gui,Main:Add,Button,x10 y45 w110 h30 gSetOvens,Set Ovens
Gui,Main:Add,ListView,y+5 w110 r10 vOvenList,x|y 
Gui,Main:Add,Button,x+5 y10 w75 h30 gsetwater,Set Water
Gui,Main:Add,Button,y+10 w75 h30 gSetorange,Set Orange Juice
Gui,Main:Add,Button,y+10 w75 h30 gSetlemon,Set Lemon
Gui,Main:Add,Button,y+10 w75 h30 gSetsprint,Set Sprint of Mint
Gui,Main:Add,Button,y+10 w75 h30 gSetSugar,Set Sugar (Optional)
Gui,Main:Add,Button,y+10 w75 h30 gSetFist,Set Fist
Gui,Main:Add,Button,y+10 w75 h30 gSetLowButton,Set Low Button
Gui,Main:Font,s12
Gui,Main:Add,Edit,x+5 y10 w100 h30 Center vwateredit
Gui,Main:Add,Edit,y+10 w100 h30 Center vorangeedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vlemonedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vsprintedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vsugaredit
Gui,Main:Add,Edit,y+10 w100 h30 Center vfistedit
Gui,Main:Add,Edit,y+10 w100 h30 Center vlowbuttonedit
Gui,Main:Font
Gui,Main:Add,Button,x+5 y10 w40 h30 gClearwater,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearorange,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearlemon,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearsprint,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearSugar,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearFist,Clear
Gui,Main:Add,Button,y+10 w40 h30 gClearLowButton,Clear

Gui,Main:Add,Button,x10 y+10 w107 h40 gStart vStartButton,Start
Gui,Main:Add,Button,x+10 w107 h40 gHideOrShow,Hide/Show
Gui,Main:Add,Button,x+10 w106 h40 gHelp,Help
Gui,Main:Add,Button,y+10 x10 w107 h40 gStop vStopButton Disabled,Stop
Gui,Main:Add,Button,x+10 w107 h40 gSettings,Settings
Gui,Main:Add,Button,x+10 w106 h40 greload,Reload

Gui,Main:Add,Groupbox,x360 y10 w130 h370, Timers
Gui,Main:Add,Text,x375 y30 +BackgroundTrans,Oven`t01 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t02 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t03 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t04 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t05 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t06 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t07 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t08 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t09 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t10 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t11 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t12 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t13 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t14 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t15 
Gui,Main:Add,Text,y+9 +BackgroundTrans  ,Oven`t16 

Gui,Main:Add,Edit,x435 y28 w50 h17 vTimerOven1
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven2
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven3
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven4
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven5
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven6
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven7
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven8
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven9
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven10
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven11
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven12
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven13
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven14
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven15
Gui,Main:Add,Edit,y+5 w50 h17 vTimerOven16

Gui,Main:default
LV_ModifyCol(1,50)
LV_ModifyCol(2,50)

Gui,Main:Color,009AE4
Gui,Main:Show,,Auto Cooking - Gemonade




Gui,Settings:Add,Groupbox,x10 y10 w155 h50,Oven Count
Gui,Settings:Add,Edit,x20 y30 w60 h20 vOvenCount Number,0
Gui,Settings:Add,UpDown,
Gui,Settings:Add,Text,x+10 y33,17 MAX

Gui,Settings:Add,Groupbox,x10 y+20 w155 h50,Loops
Gui,Settings:Add,Edit,x20 y85 w60 h20 vLoopCount Number,0
Gui,Settings:Add,UpDown,
Gui,Settings:Add,Text,x+10 y88,0 = INFINITE

Gui,Settings:Add,Button,x10 y+25 w70 h30 gOk,OK
Gui,Settings:Add,Button,x+15 w70 h30 gCancel,Cancel

Gui,Settings:Color,009AE4
Gui,Settings:Submit,NoHide


LoopCount:=99999999999
SetTimer,OvenTimer,1

return


ovenTimer:
ElapsedTimer1:=A_TickCount - OvenTimer1
GuiControl,Main:,TimerOven1,%ElapsedTimer1%
ElapsedTimer2:=A_TickCount - OvenTimer2
GuiControl,Main:,TimerOven2,%ElapsedTimer2%
ElapsedTimer3:=A_TickCount - OvenTimer3
GuiControl,Main:,TimerOven3,%ElapsedTimer3%
ElapsedTimer4:=A_TickCount - OvenTimer4
GuiControl,Main:,TimerOven4,%ElapsedTimer4%
ElapsedTimer5:=A_TickCount - OvenTimer5
GuiControl,Main:,TimerOven5,%ElapsedTimer5%
ElapsedTimer6:=A_TickCount - OvenTimer6
GuiControl,Main:,TimerOven6,%ElapsedTimer6%
ElapsedTimer7:=A_TickCount - OvenTimer7
GuiControl,Main:,TimerOven7,%ElapsedTimer7%
ElapsedTimer8:=A_TickCount - OvenTimer8
GuiControl,Main:,TimerOven8,%ElapsedTimer8%
ElapsedTimer9:=A_TickCount - OvenTimer9
GuiControl,Main:,TimerOven9,%ElapsedTimer9%
ElapsedTimer10:=A_TickCount - OvenTimer10
GuiControl,Main:,TimerOven10,%ElapsedTimer10%
ElapsedTimer11:=A_TickCount - OvenTimer11
GuiControl,Main:,TimerOven11,%ElapsedTimer11%
ElapsedTimer12:=A_TickCount - OvenTimer12
GuiControl,Main:,TimerOven12,%ElapsedTimer12%
ElapsedTimer13:=A_TickCount - OvenTimer13
GuiControl,Main:,TimerOven13,%ElapsedTimer13%
ElapsedTimer14:=A_TickCount - OvenTimer14
GuiControl,Main:,TimerOven14,%ElapsedTimer14%
ElapsedTimer15:=A_TickCount - OvenTimer15
GuiControl,Main:,TimerOven15,%ElapsedTimer15%
ElapsedTimer16:=A_TickCount - OvenTimer16
GuiControl,Main:,TimerOven16,%ElapsedTimer16%
return


OK:
Gui,Settings:Cancel
Gui,Main:-Disabled 
Gui,Main:Show
Gui,Settings:Submit,NoHide
if (LoopCount==0){
    LoopCount:=99999999999
}
return

Cancel:
Gui,Settings:Cancel
Gui,Main:-Disabled 
Gui,Main:Show
return


Help:
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
if (LoopCount=99999999999){
 GuiControl,Settings:,LoopCount,0
}else {
  GuiControl,Settings:,LoopCount,%LoopCount%
}
GuiControl,Settings:,OvenCOunt,%OvenCOunt%

return





ClearLowButton:
LowX:=
LowY:=
GuiControl,,LowButtonEdit
return


ClearFist:
FistX:=
FistY:=
GuiControl,,FistEdit,

return


ClearSugar:
SugarX:=
SugarY:=
GuiControl,,SugarEdit,
return



Clearsprint:
MintX:=
MintY:=
GuiControl,,sprintEdit,
return



Clearlemon:
lemonX:=
lemonY:=
GuiControl,,lemonEdit,

return


Clearorange:
orangeX:=
orangeY:=
GuiControl,,orangeEdit,
return

Clearwater:
waterX:=
waterY:=
GuiControl,,waterEdit,

return


Sound:
SoundBeep, 900, 200
return


Reload:
Reload
return

Stop:
Stop:=true
tooltip,stopping... please wait.
sleep,2000
tooltip,
GuiControl,Enable,StartButton
GuiControl,Disable,StopButton
return


Start:
GuiControl,Enable,StopButton
GuiControl,Disable,StartButton
stop:=false

Gui,Main:ListView,OvenList
OvenRows := LV_GetCount()

counter:=1
Loop, %OvenRows%
{
	LV_GetText(Data,A_Index,1)
	OvenX%counter%:=Data
	LV_GetText(Data,A_Index,2)
	OvenY%counter%:=Data
	counter++
}


loop,%LoopCount%{
		
	counter:=1
	loop,%OvenRows% {	; put waters to oven
		OvenX:=OvenX%counter%
		OvenY:=OvenY%counter%
		
		if stop {
			return
		}
		SendClick(WaterX,WaterY,winpid)	
		sleep,50
		SendCLick(OvenX,OvenY,winpid)
		sleep,1500
		SendCLick(LowX,LowY,winpid)
		sleep,500

		counter++
	}


	counter:=1
	loop,%OvenRows% {	; put orange to ovens
		OvenX:=OvenX%counter%
		OvenY:=OvenY%counter%
		if stop {
			return
		}
		SendClick(OrangeX,OrangeY,winpid)	
		SendCLick(OvenX,OvenY,winpid)
		OvenTimer%counter%:=A_TickCount
		sleep,2300

		counter++
	}


	loop {	; wait for 38 sec
		elapsed:=A_TickCount-OvenTimer1
		if (elapsed > 37900){
			break
		}
		if stop {
			return
		}

	}


	counter:=1
	loop,%OvenRows% {	; put lemon, mint, and punch
		OvenX:=OvenX%counter%
		OvenY:=OvenY%counter%
		if stop {
			return
		}
		SendClick(LemonX,LemonY,winpid)	
		sleep,50
		SendCLick(OvenX,OvenY,winpid)
		sleep,50
		SendClick(MintX,MintY,winpid)	
		sleep,300
		SendCLick(OvenX,OvenY,winpid)
		sleep,50
		SendCLick(FistX,FistY,winpid)
		
		loop {	; wait for 40 sec to punch
			elapsed:=A_TickCount-OvenTimer%Counter%
			if (elapsed>39900){
				SendClick(OvenX,OvenY,winpid)
				sleep,300
				break
			}
		
		}
		
		counter++
	}

	OvenTimer1:=
	OvenTimer2:=
	OvenTimer3:=
	OvenTimer4:=
	OvenTimer5:=
	OvenTimer6:=
	OvenTimer7:=
	OvenTimer8:=
	OvenTimer9:=
	OvenTimer10:=
	OvenTimer11:=
	OvenTimer12:=
	OvenTimer13:=
	OvenTimer14:=
	OvenTimer15:=
	OvenTimer16:=
	if stop {
		return
	}
}

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
			MouseGetPos,LowX,LowY
			GuiControl,,LowButtonEdit,%LowX%`,%LowY%
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




SetSugar:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Sugar`n`nLeft Click on the Sugar twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,SugarX,SugarY
			GuiControl,,SugarEdit,%SugarX%`,%SugarY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return



Setsprint:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Sprint of Mint`n`nLeft Click on the Sprint of Mint twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,MintX,MintY
			GuiControl,,sprintEdit,%MintX%`,%MintY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return



Setlemon:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Lemon`n`nLeft Click on the Lemon twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,lemonX,lemonY
			GuiControl,,lemonEdit,%lemonX%`,%lemonY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return



Setorange:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Orange`n`nLeft Click on the Orange twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,orangeX,orangeY
			GuiControl,,orangeEdit,%orangeX%`,%orangeY%
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
}

return




Setwater:
isPressed:=0,i:= 0
Loop
{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Water`n`nLeft Click on the Water twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,waterX,waterY
			GuiControl,,waterEdit,%waterX%`,%waterY%
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
LV_Delete()
counter:=1
loop,%OvenCount%{
	
	isPressed:=0,i:= 0
	Loop
	{
	Left_Mouse:=GetKeyState("LButton")
	MouseGetPos,TempX,TempY
	ToolTip,Oven %counter%`n`nLeft Click on the target twice to set `n`n Coordinate: %TempX%`,%TempY%
	if(Left_Mouse==False&&isPressed==0)
	isPressed:=1
	else if(Left_Mouse==True&&isPressed==1)
	{
		i++,isPressed:=0
		if(i>=2)
		{
			MouseGetPos,X,Y
			LV_Add(,X,Y)
			Gui,Main:Submit,NoHide
			ToolTip,
			break
		}
	}
	}
	counter++
	

}

SendClick(X,Y,pid){
ControlClick,,ahk_pid %pid%,,Left,,X%X% Y%Y% NA	
	
return
}

return