#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CoordMode,Mouse,Client
#SingleInstance,Force
DetectHiddenWindows,On


FIleDelete,%A_Temp%\version.txt

loop{
ifExist,%A_Temp%\version.txt
{
   
}else {
   
   URLDownloadToFile,https://raw.githubusercontent.com/Siynk/Version/main/Harvest.txt,%A_Temp%\version.txt
   break
}
}

sleep,300

FileRead,versionvalue,%A_Temp%\version.txt
FIleDelete,%A_Temp%\version.txt

if (versionvalue="TESTING111"){
   
   
}else{
   msgbox,,version,Please get the latest version.
   ExitApp
}


Gui,Add,StatusBar
SB_SetText("Chan Jalmasco. All rights reserved.",1)
Gui,Color,FFB6C1

Gui,Add,Button,x10 y10 w90 h25 gAddWindow,Add Window
Gui,Add,listview,x+5 w90 r5 grid gUpdate vWindow,Process PID

Gui,Add,Button,x10 y40 w90 h25 gHide vEnable,Hide All
Gui,Add,Button,x10 y+5 w90 h25 gShow Disabled vDisable,Show All
Gui,Add,Button,x10 y+5 w90 h25 gRemove,Remove PID

Gui,Font,Bold
Gui,Add,Radio,x10 y+15 vLeft gUpdate,Left - Right |
Gui,Add,Radio,x+5 vRight gUpdate Checked,Right - Left
Gui,Font,

Gui,Font,Bold
Gui,Add,Text,x30 y165,Walking Delay:
Gui,Font,
Gui,Add,Edit,x+10 y163 w45 h20 vWalkingDelay gUpdate,

Gui,Add,Button,x10 y+10 w90 h30 gCharacter,Set Character
Gui,Font,s13
Gui,Add,Edit,x+5 w90 h30 -VScroll Center Number vCharacter,
Gui,Font,

Gui,Add,Button,x10 y+10 w90 h25 gStart vEnable1,Start
Gui,Add,Button,x+5 w90 h25 gStop Disabled vDisable1,Stop


Gui,Show,,HNP
Gui,Submit,Nohide
return


Update:
Gui,Submit,Nohide
return

AddWindow:
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Window%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
Winget,Target_Window,pid,A
ToolTip,
Gui,ListView,Window
LV_Add(,Target_Window)
break
}
}
}
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


Start:
GuiControl,Disable,Enable1
GuiControl,Enable,Disable1
Stop:=False
Gui,ListView,Window
PIDCount:=LV_GetCount()
counter:=1
loop, % LV_GetCount()
{
    LV_GetText(window%counter%, A_Index)
	counter++
}

Loop{
    if (Right=1)
    {
        GT_Auto_Plant("Right",WalkingDelay,"Window",CharacterX,CharacterY)
        sleep,50
        Send_Key_Down_AllPID_Function("Up","Window")
        sleep,200
        Send_Key_Up_AllPID_Function("Up","Window")
        sleep,200
        GT_Auto_Plant("Left",WalkingDelay,"Window",CharacterX,CharacterY)
        sleep,50
        Send_Key_Down_AllPID_Function("Up","Window")
        sleep,200
        Send_Key_Up_AllPID_Function("Up","Window")
        sleep,200
        
    }else{
        GT_Auto_Plant("Left",WalkingDelay,"Window",CharacterX,CharacterY)
        sleep,50
        Send_Key_Down_AllPID_Function("Up","Window")
        sleep,200
        Send_Key_Up_AllPID_Function("Up","Window")
        sleep,200
        GT_Auto_Plant("Right",WalkingDelay,"Window",CharacterX,CharacterY)
        sleep,50
        Send_Key_Down_AllPID_Function("Up","Window")
        sleep,200
        Send_Key_Up_AllPID_Function("Up","Window")
        sleep,200
    }
    
}

return

Stop:
GuiControl,Enable,Enable1
GuiControl,Disable,Disable1
stop:=true
return

Hide:
GuiControl,Disable,Enable
GuiControl,Enable,Disable
Gui,ListView,Window
Loop % LV_GetCount()
{
	LV_GetText(RetrievedText, A_Index)
	WinHide,ahk_pid %RetrievedText%
}
return


Show:
GuiControl,Enable,Enable
GuiControl,Disable,Disable
Gui,ListView,Window
Loop % LV_GetCount()
{
	LV_GetText(RetrievedText, A_Index)
	WinShow,ahk_pid %RetrievedText%
}
return

Remove:
msgbox,4,Delete,Are you sure you want to delete all PID?
ifmsgbox,Yes
{
Gui,Listview,Window
LV_Delete()
} else {
return
}
return

GuiClose:
msgbox,4,Exit App,Are you sure you want to exit the program?
ifmsgbox,Yes
{
ExitApp
}
return

GT_Auto_Plant(LeftOrRight,WalkingTime,ListViewName,GTAutoPlantX,GTAutoPlantY){
    global
    GTAutoWalkTimer:=A_TickCount
    GTAutoWalkTimer2:=A_TickCount    
    Send_Key_Down_AllPID_Function(LeftOrRight,ListViewName)
    Hold_AllPID_Function(GTAutoPlantX,GTAutoPlantY,ListViewName)
    loop {
        GTAutoWalkTimerElapsed:=A_TickCount-GTAutoWalkTimer
        GTAutoWalkTimerElapsed2:=A_TickCount-GTAutoWalkTimer2
        if not stop
        {
            if (GTAutoWalkTimerElapsed < WalkingTime){
                if (GTAutoWalkTimerElapsed2>7000)
                {
                    Send_Key_Up_AllPID_Function(LeftOrRight,ListViewName)
                    sleep,20
                    Release_AllPID_Function(GTAutoPlantX,GTAutoPlantY,ListViewName)
                    sleep,20
                    Hold_AllPID_Function(GTAutoPlantX,GTAutoPlantY,ListViewName)
                    sleep,20
                    Send_Key_Down_AllPID_Function(LeftOrRight,ListViewName)
                    GTAutoWalkTimer2:=A_TickCount
                }
                
            } else {
                Release_AllPID_Function(GTAutoPlantX,GTAutoPlantY,ListViewName)
                sleep,20
                Send_Key_Up_AllPID_Function(LeftOrRight,ListViewName)
                break
            }
        }else {
            Gui,ListView,%ListViewName%
            PIDCount:=LV_GetCount()
            Stopcounter:=1
            loop, %PIDCount%{
                LV_GetText(window,A_Index)
                ControlSend,,{%LeftOrRight% Up},ahk_pid %window%
                Stopcounter++
            }
            Release_AllPID_Function(GTAutoPlantX,GTAutoPlantY,ListViewName)
            Exit
        }
        
    }
    return
}


GT_Auto_Walk(LeftOrRight,WalkingTime,ListViewName){
    global
    GTAutoWalkTimer:=A_TickCount
    GTAutoWalkTimer2:=A_TickCount    
    Send_Key_Down_AllPID_Function(LeftOrRight,ListViewName)
    loop {
        GTAutoWalkTimerElapsed:=A_TickCount-GTAutoWalkTimer
        GTAutoWalkTimerElapsed2:=A_TickCount-GTAutoWalkTimer2
        if not stop
        {
            if (GTAutoWalkTimerElapsed < WalkingTime){
                if (GTAutoWalkTimerElapsed2>7000)
                {
                    Send_Key_Up_AllPID_Function(LeftOrRight,ListViewName)
                    sleep,20
                    Send_Key_Down_AllPID_Function(LeftOrRight,ListViewName)
                    GTAutoWalkTimer2:=A_TickCount
                }
                
            } else {
                Send_Key_Up_AllPID_Function(LeftOrRight,ListViewName)
                break
            }
        }else {
            Gui,ListView,%ListViewName%
            PIDCount:=LV_GetCount()
            Stopcounter:=1
            loop, %PIDCount%{
                LV_GetText(window,A_Index)
                ControlSend,,{%LeftOrRight% Up},ahk_pid %window%
                Stopcounter++
            }
            Exit
        }
        
    }
    return
}


Send_Key_AllPID_Function(KeyName,listviewname){
    global
    Gui,ListView,%ListViewName%
    PIDCount:=LV_GetCount()
    counter:=1
    loop, %PIDCount%{
        LV_GetText(window,A_Index)
        if not stop{
            ControlSend,,{%KeyName%},ahk_pid %window%
            sleep,20
        }else{
            exit
        }
        counter++
    }
    return
}


Send_Key_Up_AllPID_Function(KeyName,listviewname){
    global
    Gui,ListView,%ListViewName%
    PIDCount:=LV_GetCount()
    counter:=1
    loop, %PIDCount%{
        LV_GetText(window,A_Index)
        if not stop{
            ControlSend,,{%KeyName% Up},ahk_pid %window%
        }else{
            exit
        }
        counter++
    }
    return
}


Send_Key_Down_AllPID_Function(KeyName,listviewname){
    global
    Gui,ListView,%ListViewName%
    PIDCount:=LV_GetCount()
    counter:=1
    loop, %PIDCount%{
        LV_GetText(window,A_Index)
        if not stop{
            ControlSend,,{%KeyName% Down},ahk_pid %window%
        }else{
            exit
        }
        counter++
    }
    return
}

Release_AllPID_Function(x,y,listviewname){
    global
    Gui,ListView,%ListViewName%
    PIDCount:=LV_GetCount()
    counter:=1
    loop, %PIDCount%{
        LV_GetText(window,A_Index)
        if not stop{
            ControlClick,,ahk_pid %window%,,Left,,X%x% Y%y% NA U
        }else{
            exit
        }
        counter++
    }
    return
}

Hold_AllPID_Function(x,y,listviewname){
    global
    Gui,ListView,%ListViewName%
    PIDCount:=LV_GetCount()
    counter:=1
    loop, %PIDCount%{
        LV_GetText(window,A_Index)
        if not stop{
            ControlClick,,ahk_pid %window%,,Left,,X%x% Y%y% NA D
        }else{
            exit
        }
        counter++
    }
    return
}


Click_AllPID_Function(x,y,listviewname){
    global
    Gui,ListView,%ListViewName%
    PIDCount:=LV_GetCount()
    counter:=1
    loop, %PIDCount%{
        LV_GetText(window,A_Index)
        if not stop{
            ControlClick,,ahk_pid %window%,,Left,,X%x% Y%y% NA
        }else{
            exit
        }
        counter++
    }
    return
}