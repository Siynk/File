#SingleInstance,Force
DetectHiddenWindows,On

Gui,Add,Button,x10 y10 w90 h25 gSet,Set Window
Gui,Add,listview,x+5 w90 r5 grid gUpdate vsetlistview,Process PID

Gui,Add,Button,x10 y40 w90 h25 gHide vEnable,Hide
Gui,Add,Button,x10 y+5 w90 h25 gShow Disabled vDisable,Show
Gui,Add,Button,x10 y+5 w90 h25 gRemove,Remove PID

Gui,Add,Button,x10 y+10 w90 h25 gStart vEnable1,Start
Gui,Add,Button,x+5 w90 h25 gStop Disabled vDisable1,Stop


Gui,Show,,Enable&Disable
Gui,Submit,Nohide
return


Update:
Gui,Submit,Nohide
return

Set:
Set := SetList()
Gui,Submit,Nohide
SetList(){
i := 0
k := 0
	loop {
	WInGetTitle,Now,A
	tooltip,Click 2 times the Windows`n%now%
	Click := GetKeyState("Lbutton")
	if (Click == false && k == 0)
	k := 1
	else if (Click == true && k == 1)
	{
	i++
	K := 0
	if (i >= 2)
	{
	WinGet,Set,PID,A
	Gui,ListView,SetListvie
	lv_add(,Set,A_Index)
	tooltip
	break
	}
	}
	}
return Set
}
return


Start:
GuiControl,Disable,Enable1
GuiControl,Enable,Disable1

Gui,Listview,SetListview
Start:=LV_GetCount()
counter:=1
loop, % LV_GetCount()
{
    LV_GetText(Start%counter%, A_Index)
	counter++
}

Loop {
counter:=1
loop,%Start%
{
  Start:=Start%counter%
  ControlSend,,{Right Down},ahk_pid %Start%
  counter++
}

	Timer:=A_TickCount
	Timer2:=A_TickCount
	loop {
		ElapsedTime:=A_TickCount-Timer
		ElapsedTime2:=A_TickCount-Timer2
		if (ElapsedTime>25000){
			counter:=1
			loop, %Start%{
			Start:=Start%counter%
			ControlSend,,{right Up},ahk_pid %Start%
			counter++
			}
		}
		if (ElapsedTime2>8000){
			counter:=1
			loop, %Start%{
			Start:=Start%counter%
			ControlSend,,{right Up},ahk_pid %Start%
			sleep,50
			ControlSend,,{right Down},ahk_pid %Start%
			counter++
			}
			timer2:=A_TickCount
		}
	}
	sleep,200
}
return



Stop:
GuiControl,Enable,Enable1
GuiControl,Disable,Disable1
Gui,Listview,SetListview
Stop:=LV_GetCount()
counter:=1
loop, % LV_GetCount()
{
    LV_GetText(Stop%counter%, A_Index)
	counter++
}

counter:=1
loop,%Stop%
{
  Stop:= Stop%counter%
  
  counter++
}
return

Hide:
GuiControl,Disable,Enable
GuiControl,Enable,Disable
Counter := 1
Gui,MainGui:Listview,setlistview
Rows := Lv_GetCount()
loop,%Rows%
{
Lv_GetText(TargetWindow%counter%,A_Index)
Winpid := TargetWindow%counter%
WinHide,AHk_Pid %winPID%
Counter++
}
return


Show:
GuiControl,Enable,Enable
GuiControl,Disable,Disable
Counter := 1
Gui,MainGui:Listview,setlistview
Rows := Lv_GetCount()
loop,%Rows%
{
Lv_GetText(TargetWindow%counter%,A_Index)
Winpid := TargetWindow%counter%
WinShow,AHk_Pid %winPID%
Counter++
}
return

Remove:
Gui,Listview,SetListview
RowNumber := LV_GetNext(,"F")
LV_GetText(Text,RowNumber,1)
LV_Delete(RowNumber)
return

GuiClose:
ExitApp
return