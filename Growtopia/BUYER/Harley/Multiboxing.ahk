#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SetDefaultMouseSpeed,0
SetBatchLines,-1
SetControlDelay,-1
SetKeyDelay,-1
SetMouseDelay,-1
DetectHiddenWindows,On
Suspend,On
#SingleInstance,Off
CoordMode, Mouse, Client
CoordMode, Pixel, Client


FIleDelete,%A_Temp%\version.txt

loop{
ifExist,%A_Temp%\version.txt
{
   
}else {
   
   URLDownloadToFile,https://raw.githubusercontent.com/Siynk/Version/main/Harley1.txt,%A_Temp%\version.txt
   break
}
}

sleep,300

FileRead,versionvalue,%A_Temp%\version.txt
FIleDelete,%A_Temp%\version.txt

if (versionvalue="HARLEY-09-30-2021"){
   
   
}else{
   msgbox,,version,Please get the latest version.
   ExitApp
}


Gui,Add,Text, x10 y15, Master Window:
Gui,Add,Edit, x95 y10 r1 w180 vMasterWindow gUpdater
Gui,Add,Button, x+10 y10 gSetMasterWindow, Set Window
Gui,Add,Text,x10 y55,1:
Gui,Add,Text,y+18,2:
Gui,Add,Text,y+18,3:
Gui,Add,Text,y+18,4:
Gui,Add,Text,y+18,5:
Gui,Add,Text,y+18,6:
Gui,Add,Text,y+18,7:
Gui,Add,Text,y+18,8:
Gui,Add,Text,y+18,9:
Gui,Add,Text,y+18,10:
Gui,Add,Edit, x25 y50 r1 w95 vWindow1 gUpdater
Gui,Add,Edit, y+10 r1 w95 vWindow2 gUpdater
Gui,Add,Edit, y+10 r1 w95 vWindow3 gUpdater
Gui,Add,Edit, y+10 r1 w95 vWindow4 gUpdater
Gui,Add,Edit, y+10 r1 w95 vWindow5 gUpdater
Gui,Add,Edit, y+10 r1 w95 vWindow6 gUpdater
Gui,Add,Edit, y+10 r1 w95 vWindow7 gUpdater
Gui,Add,Edit, y+10 r1 w95 vWindow8 gUpdater
Gui,Add,Edit, y+10 r1 w95 vWindow9 gUpdater
Gui,Add,Edit, y+10 r1 w95 vWindow10 gUpdater
Gui,Add,Button, x130 y50 h22 gSetWindow1, Set Window
Gui,Add,Button,y+9 h22 gSetWindow2, Set Window
Gui,Add,Button,y+9 h22 gSetWindow3, Set Window
Gui,Add,Button,y+9 h22 gSetWindow4, Set Window
Gui,Add,Button,y+9 h22 gSetWindow5, Set Window
Gui,Add,Button,y+9 h22 gSetWindow6, Set Window
Gui,Add,Button,y+9 h22 gSetWindow7, Set Window
Gui,Add,Button,y+9 h22 gSetWindow8, Set Window
Gui,Add,Button,y+9 h22 gSetWindow9, Set Window
Gui,Add,Button,y+9 h22 gSetWindow10, Set Window
Gui,Add,Button,x200 y50 h22 gHideWindow1,Hide Window
Gui,Add,Button, y+9  h22 gHideWindow2,Hide Window
Gui,Add,Button, y+9  h22 gHideWindow3,Hide Window
Gui,Add,Button, y+9  h22 gHideWindow4,Hide Window
Gui,Add,Button, y+9  h22 gHideWindow5,Hide Window
Gui,Add,Button, y+9  h22 gHideWindow6,Hide Window
Gui,Add,Button, y+9  h22 gHideWindow7,Hide Window
Gui,Add,Button, y+9  h22 gHideWindow8,Hide Window
Gui,Add,Button, y+9  h22 gHideWindow9,Hide Window
Gui,Add,Button, y+9  h22 gHideWindow10,Hide Window
Gui,Add, Button, x276 y50 h22 gShowWindow1, Show Window
Gui,ADd, Button, y+9 h22 gShowWindow2, Show Window
Gui,ADd, Button, y+9 h22 gShowWindow3, Show Window
Gui,ADd, Button, y+9 h22 gShowWindow4, Show Window
Gui,ADd, Button, y+9 h22 gShowWindow5, Show Window
Gui,ADd, Button, y+9 h22 gShowWindow6, Show Window
Gui,ADd, Button, y+9 h22 gShowWindow7, Show Window
Gui,ADd, Button, y+9 h22 gShowWindow8, Show Window
Gui,ADd, Button, y+9 h22 gShowWindow9, Show Window
Gui,ADd, Button, y+9 h22 gShowWindow10, Show Window
Gui,Add, Button, x10 y360 w110 h30 vstartbutton gstartmultiboxing, Start Multiboxing
Gui,Add,Button, x+10 w110 h30 vstopbutton gstopmultiboxing, Stop Multiboxing
Gui,Add,Button,x+10 w110 h30
Gui,Add,Button, x10 y400 w110 h30
Gui,Add,Button, x+10 w110 h30 gReloader, Reload
Gui,Add,Button, x+10 w110 h30 gGuiClose,Exit App
Gui,Add,StatusBar
SB_SetText("Copy Right Chan Jalmasco. All rights reserved.",1)
Gui,Color,FFB6C1
Gui,Show,,Growtopia Multiboxing
return
stopmultiboxing:
GuiControl,Disable,stopbutton
GuiControl,Enable,startbutton
Suspend,On
return
startmultiboxing:
GuiControl,Disable,startbutton
GuiControl,Enable,stopbutton
Suspend, Off
return
Reloader:
Reload
return
GuiClose:
ExitApp
return
HideWindow1:
WinHide,ahk_pid %window1%
return
HideWindow2:
WinHide,ahk_pid %window2%
return
HideWindow3:
WinHide,ahk_pid %window3%
return
HideWindow4:
WinHide,ahk_pid %window4%
return
HideWindow5:
WinHide,ahk_pid %window5%
return
HideWindow6:
WinHide,ahk_pid %window6%
return
HideWindow7:
WinHide,ahk_pid %window7%
return
HideWindow8:
WinHide,ahk_pid %window8%
return
HideWindow9:
WinHide,ahk_pid %window9%
return
HideWindow10:
WinHide, ahk_pid %window10%
return
ShowWindow1:
WinShow,ahk_pid %window1%
return
ShowWindow2:
WinShow,ahk_pid %window2%
return
ShowWindow3:
WinShow,ahk_pid %window3%
return
ShowWindow4:
WinShow,ahk_pid %window4%
return
ShowWindow5:
WinShow,ahk_pid %window5%
return
ShowWindow6:
WinShow,ahk_pid %window6%
return
ShowWindow7:
WinShow,ahk_pid %window7%
return
ShowWindow8:
WinShow,ahk_pid %window8%
return
ShowWindow9:
WinShow,ahk_pid %window9%
return
ShowWindow10:
WinShow,ahk_pid %window10%
return
SetMasterWindow:
Target_Window:=Set_WindowMaster(Target_Window)
GuiControl,,MasterWindow, % Target_Window
Gui,Submit,NoHide
return
SetWindow1:
Target_Window:=Set_Window1(Target_Window)
GuiControl,,Window1, % Target_Window
Gui,Submit,NoHide
return
SetWindow2:
Target_Window:=Set_Window2(Target_Window)
GuiControl,,Window2, % Target_Window
Gui,Submit,NoHide
return
SetWindow3:
Target_Window:=Set_Window3(Target_Window)
GuiControl,,Window3, % Target_Window
Gui,Submit,NoHide
return
SetWindow4:
Target_Window:=Set_Window4(Target_Window)
GuiControl,,Window4, % Target_Window
Gui,Submit,NoHide
return
SetWindow5:
Target_Window:=Set_Window5(Target_Window)
GuiControl,,Window5, % Target_Window
Gui,Submit,NoHide
return
SetWindow6:
Target_Window:=Set_Window6(Target_Window)
GuiControl,,Window6, % Target_Window
Gui,Submit,NoHide
return
SetWindow7:
Target_Window:=Set_Window7(Target_Window)
GuiControl,,Window7, % Target_Window
Gui,Submit,NoHide
return
SetWindow8:
Target_Window:=Set_Window8(Target_Window)
GuiControl,,Window8, % Target_Window
Gui,Submit,NoHide
return
SetWindow9:
Target_Window:=Set_Window9(Target_Window)
GuiControl,,Window9, % Target_Window
Gui,Submit,NoHide
return
SetWindow10:
Target_Window:=Set_Window10(Target_Window)
GuiControl,,Window10, % Target_Window
Gui,Submit,NoHide
return
Updater:
Gui,Submit,NoHide
return
Set_WindowMaster(Target_Window)
{
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Temp%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
WinSetTitle,A,,Master Window
Winget,Target_Window,pid,A
ToolTip,
break
}
}
}
return Target_Window
}
Set_Window1(Target_Window)
{
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Temp%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
WinSetTitle,A,,1 Growtopia
Winget,Target_Window,pid,A
ToolTip,
break
}
}
}
return Target_Window
}
Set_Window2(Target_Window)
{
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Temp%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
WinSetTitle,A,,2 Growtopia
Winget,Target_Window,pid,A
ToolTip,
break
}
}
}
return Target_Window
}
Set_Window3(Target_Window)
{
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Temp%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
WinSetTitle,A,,3 Growtopia
Winget,Target_Window,pid,A
ToolTip,
break
}
}
}
return Target_Window
}
Set_Window4(Target_Window)
{
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Temp%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
WinSetTitle,A,,4 Growtopia
Winget,Target_Window,pid,A
ToolTip,
break
}
}
}
return Target_Window
}
Set_Window5(Target_Window)
{
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Temp%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
WinSetTitle,A,,5 Growtopia
Winget,Target_Window,pid,A
ToolTip,
break
}
}
}
return Target_Window
}
Set_Window6(Target_Window)
{
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Temp%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
WinSetTitle,A,,6 Growtopia
Winget,Target_Window,pid,A
ToolTip,
break
}
}
}
return Target_Window
}
Set_Window7(Target_Window)
{
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Temp%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
WinSetTitle,A,,7 Growtopia
Winget,Target_Window,pid,A
ToolTip,
break
}
}
}
return Target_Window
}
Set_Window8(Target_Window)
{
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Temp%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
WinSetTitle,A,,8 Growtopia
Winget,Target_Window,pid,A
ToolTip,
break
}
}
}
return Target_Window
}
Set_Window9(Target_Window)
{
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Temp%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
WinSetTitle,A,,9 Growtopia
Winget,Target_Window,pid,A
ToolTip,
break
}
}
}
return Target_Window
}
Set_Window10(Target_Window)
{
isPressed:=0,i:=0
Loop
{
Left_Mouse:=GetKeyState("LButton")
WinGetTitle,Temp_Window,A
ToolTip,Left Click on the target window twice to set `n`n Current Window: %Temp_Temp%
if(Left_Mouse==False&&isPressed==0)
isPressed:=1
else if(left_Mouse==True&&isPressed==1)
{
i++,isPressed:=0
if (i>2)
{
WinSetTitle,A,,10 Growtopia
Winget,Target_Window,pid,A
ToolTip,
break
}
}
}
return Target_Window
}
~LButton::
WinGetTitle,ActiveWindow,A
MouseGetPos,MouseCLickedOnX,MouseClickedOnY
if (ActiveWindow == "Master Window"){
ControlClick,,ahk_pid %window1%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA D
ControlClick,,ahk_pid %window2%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA D
ControlClick,,ahk_pid %window3%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA D
ControlClick,,ahk_pid %window4%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA D
ControlClick,,ahk_pid %window5%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA D
ControlClick,,ahk_pid %window6%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA D
ControlClick,,ahk_pid %window7%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA D
ControlClick,,ahk_pid %window8%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA D
ControlClick,,ahk_pid %window9%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA D
ControlClick,,ahk_pid %window10%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA D
}
return
~LButton Up::
ControlClick,,ahk_pid %window1%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA U
ControlClick,,ahk_pid %window2%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA U
ControlClick,,ahk_pid %window3%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA U
ControlClick,,ahk_pid %window4%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA U
ControlClick,,ahk_pid %window5%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA U
ControlClick,,ahk_pid %window6%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA U
ControlClick,,ahk_pid %window7%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA U
ControlClick,,ahk_pid %window8%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA U
ControlClick,,ahk_pid %window9%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA U
ControlClick,,ahk_pid %window10%,,Left,,X%MouseCLickedOnX% Y%MouseClickedOnY% NA U
return
~w::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{w down},ahk_pid %window1%
ControlSend,,{w down},ahk_pid %window2%
ControlSend,,{w down},ahk_pid %window3%
ControlSend,,{w down},ahk_pid %window4%
ControlSend,,{w down},ahk_pid %window5%
ControlSend,,{w down},ahk_pid %window6%
ControlSend,,{w down},ahk_pid %window7%
ControlSend,,{w down},ahk_pid %window8%
ControlSend,,{w down},ahk_pid %window9%
ControlSend,,{w down},ahk_pid %window10%
}
return
~w Up::
ControlSend,,{w up},ahk_pid %window1%
ControlSend,,{w up},ahk_pid %window2%
ControlSend,,{w up},ahk_pid %window3%
ControlSend,,{w up},ahk_pid %window4%
ControlSend,,{w up},ahk_pid %window5%
ControlSend,,{w up},ahk_pid %window6%
ControlSend,,{w up},ahk_pid %window7%
ControlSend,,{w up},ahk_pid %window8%
ControlSend,,{w up},ahk_pid %window9%
ControlSend,,{w up},ahk_pid %window10%
return
~a::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{a down},ahk_pid %window1%
ControlSend,,{a down},ahk_pid %window2%
ControlSend,,{a down},ahk_pid %window3%
ControlSend,,{a down},ahk_pid %window4%
ControlSend,,{a down},ahk_pid %window5%
ControlSend,,{a down},ahk_pid %window6%
ControlSend,,{a down},ahk_pid %window7%
ControlSend,,{a down},ahk_pid %window8%
ControlSend,,{a down},ahk_pid %window9%
ControlSend,,{a down},ahk_pid %window10%
}
return
~a up::
ControlSend,,{a up},ahk_pid %window1%
ControlSend,,{a up},ahk_pid %window2%
ControlSend,,{a up},ahk_pid %window3%
ControlSend,,{a up},ahk_pid %window4%
ControlSend,,{a up},ahk_pid %window5%
ControlSend,,{a up},ahk_pid %window6%
ControlSend,,{a up},ahk_pid %window7%
ControlSend,,{a up},ahk_pid %window8%
ControlSend,,{a up},ahk_pid %window9%
ControlSend,,{a up},ahk_pid %window10%
return
~s::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{s down},ahk_pid %window1%
ControlSend,,{s down},ahk_pid %window2%
ControlSend,,{s down},ahk_pid %window3%
ControlSend,,{s down},ahk_pid %window4%
ControlSend,,{s down},ahk_pid %window5%
ControlSend,,{s down},ahk_pid %window6%
ControlSend,,{s down},ahk_pid %window7%
ControlSend,,{s down},ahk_pid %window8%
ControlSend,,{s down},ahk_pid %window9%
ControlSend,,{s down},ahk_pid %window10%
}
return
~s up::
ControlSend,,{s up},ahk_pid %window1%
ControlSend,,{s up},ahk_pid %window2%
ControlSend,,{s up},ahk_pid %window3%
ControlSend,,{s up},ahk_pid %window4%
ControlSend,,{s up},ahk_pid %window5%
ControlSend,,{s up},ahk_pid %window6%
ControlSend,,{s up},ahk_pid %window7%
ControlSend,,{s up},ahk_pid %window8%
ControlSend,,{s up},ahk_pid %window9%
ControlSend,,{s up},ahk_pid %window10%
return
~d::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{d down},ahk_pid %window1%
ControlSend,,{d down},ahk_pid %window2%
ControlSend,,{d down},ahk_pid %window3%
ControlSend,,{d down},ahk_pid %window4%
ControlSend,,{d down},ahk_pid %window5%
ControlSend,,{d down},ahk_pid %window6%
ControlSend,,{d down},ahk_pid %window7%
ControlSend,,{d down},ahk_pid %window8%
ControlSend,,{d down},ahk_pid %window9%
ControlSend,,{d down},ahk_pid %window10%
}
return
~d up::
ControlSend,,{d up},ahk_pid %window1%
ControlSend,,{d up},ahk_pid %window2%
ControlSend,,{d up},ahk_pid %window3%
ControlSend,,{d up},ahk_pid %window4%
ControlSend,,{d up},ahk_pid %window5%
ControlSend,,{d up},ahk_pid %window6%
ControlSend,,{d up},ahk_pid %window7%
ControlSend,,{d up},ahk_pid %window8%
ControlSend,,{d up},ahk_pid %window9%
ControlSend,,{d up},ahk_pid %window10%
return
~q::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{q down},ahk_pid %window1%
ControlSend,,{q down},ahk_pid %window2%
ControlSend,,{q down},ahk_pid %window3%
ControlSend,,{q down},ahk_pid %window4%
ControlSend,,{q down},ahk_pid %window5%
ControlSend,,{q down},ahk_pid %window6%
ControlSend,,{q down},ahk_pid %window7%
ControlSend,,{q down},ahk_pid %window8%
ControlSend,,{q down},ahk_pid %window9%
ControlSend,,{q down},ahk_pid %window10%
}
return
~q up::
ControlSend,,{q up},ahk_pid %window1%
ControlSend,,{q up},ahk_pid %window2%
ControlSend,,{q up},ahk_pid %window3%
ControlSend,,{q up},ahk_pid %window4%
ControlSend,,{q up},ahk_pid %window5%
ControlSend,,{q up},ahk_pid %window6%
ControlSend,,{q up},ahk_pid %window7%
ControlSend,,{q up},ahk_pid %window8%
ControlSend,,{q up},ahk_pid %window9%
ControlSend,,{q up},ahk_pid %window10%
return
~e::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{e down},ahk_pid %window1%
ControlSend,,{e down},ahk_pid %window2%
ControlSend,,{e down},ahk_pid %window3%
ControlSend,,{e down},ahk_pid %window4%
ControlSend,,{e down},ahk_pid %window5%
ControlSend,,{e down},ahk_pid %window6%
ControlSend,,{e down},ahk_pid %window7%
ControlSend,,{e down},ahk_pid %window8%
ControlSend,,{e down},ahk_pid %window9%
ControlSend,,{e down},ahk_pid %window10%
}
return
~e up::
ControlSend,,{e up},ahk_pid %window1%
ControlSend,,{e up},ahk_pid %window2%
ControlSend,,{e up},ahk_pid %window3%
ControlSend,,{e up},ahk_pid %window4%
ControlSend,,{e up},ahk_pid %window5%
ControlSend,,{e up},ahk_pid %window6%
ControlSend,,{e up},ahk_pid %window7%
ControlSend,,{e up},ahk_pid %window8%
ControlSend,,{e up},ahk_pid %window9%
ControlSend,,{e up},ahk_pid %window10%
return
~r::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{r down},ahk_pid %window1%
ControlSend,,{r down},ahk_pid %window2%
ControlSend,,{r down},ahk_pid %window3%
ControlSend,,{r down},ahk_pid %window4%
ControlSend,,{r down},ahk_pid %window5%
ControlSend,,{r down},ahk_pid %window6%
ControlSend,,{r down},ahk_pid %window7%
ControlSend,,{r down},ahk_pid %window8%
ControlSend,,{r down},ahk_pid %window9%
ControlSend,,{r down},ahk_pid %window10%
}
return
~r up::
ControlSend,,{r up},ahk_pid %window1%
ControlSend,,{r up},ahk_pid %window2%
ControlSend,,{r up},ahk_pid %window3%
ControlSend,,{r up},ahk_pid %window4%
ControlSend,,{r up},ahk_pid %window5%
ControlSend,,{r up},ahk_pid %window6%
ControlSend,,{r up},ahk_pid %window7%
ControlSend,,{r up},ahk_pid %window8%
ControlSend,,{r up},ahk_pid %window9%
ControlSend,,{r up},ahk_pid %window10%
return
~t::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{t down},ahk_pid %window1%
ControlSend,,{t down},ahk_pid %window2%
ControlSend,,{t down},ahk_pid %window3%
ControlSend,,{t down},ahk_pid %window4%
ControlSend,,{t down},ahk_pid %window5%
ControlSend,,{t down},ahk_pid %window6%
ControlSend,,{t down},ahk_pid %window7%
ControlSend,,{t down},ahk_pid %window8%
ControlSend,,{t down},ahk_pid %window9%
ControlSend,,{t down},ahk_pid %window10%
}
return
~t up::
ControlSend,,{t up},ahk_pid %window1%
ControlSend,,{t up},ahk_pid %window2%
ControlSend,,{t up},ahk_pid %window3%
ControlSend,,{t up},ahk_pid %window4%
ControlSend,,{t up},ahk_pid %window5%
ControlSend,,{t up},ahk_pid %window6%
ControlSend,,{t up},ahk_pid %window7%
ControlSend,,{t up},ahk_pid %window8%
ControlSend,,{t up},ahk_pid %window9%
ControlSend,,{t up},ahk_pid %window10%
return
~y::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{y down},ahk_pid %window1%
ControlSend,,{y down},ahk_pid %window2%
ControlSend,,{y down},ahk_pid %window3%
ControlSend,,{y down},ahk_pid %window4%
ControlSend,,{y down},ahk_pid %window5%
ControlSend,,{y down},ahk_pid %window6%
ControlSend,,{y down},ahk_pid %window7%
ControlSend,,{y down},ahk_pid %window8%
ControlSend,,{y down},ahk_pid %window9%
ControlSend,,{y down},ahk_pid %window10%
}
return
~y up::
ControlSend,,{y up},ahk_pid %window1%
ControlSend,,{y up},ahk_pid %window2%
ControlSend,,{y up},ahk_pid %window3%
ControlSend,,{y up},ahk_pid %window4%
ControlSend,,{y up},ahk_pid %window5%
ControlSend,,{y up},ahk_pid %window6%
ControlSend,,{y up},ahk_pid %window7%
ControlSend,,{y up},ahk_pid %window8%
ControlSend,,{y up},ahk_pid %window9%
ControlSend,,{y up},ahk_pid %window10%
return
~u::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{u down},ahk_pid %window1%
ControlSend,,{u down},ahk_pid %window2%
ControlSend,,{u down},ahk_pid %window3%
ControlSend,,{u down},ahk_pid %window4%
ControlSend,,{u down},ahk_pid %window5%
ControlSend,,{u down},ahk_pid %window6%
ControlSend,,{u down},ahk_pid %window7%
ControlSend,,{u down},ahk_pid %window8%
ControlSend,,{u down},ahk_pid %window9%
ControlSend,,{u down},ahk_pid %window10%
}
return
~u up::
ControlSend,,{u up},ahk_pid %window1%
ControlSend,,{u up},ahk_pid %window2%
ControlSend,,{u up},ahk_pid %window3%
ControlSend,,{u up},ahk_pid %window4%
ControlSend,,{u up},ahk_pid %window5%
ControlSend,,{u up},ahk_pid %window6%
ControlSend,,{u up},ahk_pid %window7%
ControlSend,,{u up},ahk_pid %window8%
ControlSend,,{u up},ahk_pid %window9%
ControlSend,,{u up},ahk_pid %window10%
return
~i::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{i down},ahk_pid %window1%
ControlSend,,{i down},ahk_pid %window2%
ControlSend,,{i down},ahk_pid %window3%
ControlSend,,{i down},ahk_pid %window4%
ControlSend,,{i down},ahk_pid %window5%
ControlSend,,{i down},ahk_pid %window6%
ControlSend,,{i down},ahk_pid %window7%
ControlSend,,{i down},ahk_pid %window8%
ControlSend,,{i down},ahk_pid %window9%
ControlSend,,{i down},ahk_pid %window10%
}
return
~i up::
ControlSend,,{i up},ahk_pid %window1%
ControlSend,,{i up},ahk_pid %window2%
ControlSend,,{i up},ahk_pid %window3%
ControlSend,,{i up},ahk_pid %window4%
ControlSend,,{i up},ahk_pid %window5%
ControlSend,,{i up},ahk_pid %window6%
ControlSend,,{i up},ahk_pid %window7%
ControlSend,,{i up},ahk_pid %window8%
ControlSend,,{i up},ahk_pid %window9%
ControlSend,,{i up},ahk_pid %window10%
return
~o::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{o down},ahk_pid %window1%
ControlSend,,{o down},ahk_pid %window2%
ControlSend,,{o down},ahk_pid %window3%
ControlSend,,{o down},ahk_pid %window4%
ControlSend,,{o down},ahk_pid %window5%
ControlSend,,{o down},ahk_pid %window6%
ControlSend,,{o down},ahk_pid %window7%
ControlSend,,{o down},ahk_pid %window8%
ControlSend,,{o down},ahk_pid %window9%
ControlSend,,{o down},ahk_pid %window10%
}
return
~o up::
ControlSend,,{o up},ahk_pid %window1%
ControlSend,,{o up},ahk_pid %window2%
ControlSend,,{o up},ahk_pid %window3%
ControlSend,,{o up},ahk_pid %window4%
ControlSend,,{o up},ahk_pid %window5%
ControlSend,,{o up},ahk_pid %window6%
ControlSend,,{o up},ahk_pid %window7%
ControlSend,,{o up},ahk_pid %window8%
ControlSend,,{o up},ahk_pid %window9%
ControlSend,,{o up},ahk_pid %window10%
return
~p::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{p down},ahk_pid %window1%
ControlSend,,{p down},ahk_pid %window2%
ControlSend,,{p down},ahk_pid %window3%
ControlSend,,{p down},ahk_pid %window4%
ControlSend,,{p down},ahk_pid %window5%
ControlSend,,{p down},ahk_pid %window6%
ControlSend,,{p down},ahk_pid %window7%
ControlSend,,{p down},ahk_pid %window8%
ControlSend,,{p down},ahk_pid %window9%
ControlSend,,{p down},ahk_pid %window10%
}
return
~p up::
ControlSend,,{p up},ahk_pid %window1%
ControlSend,,{p up},ahk_pid %window2%
ControlSend,,{p up},ahk_pid %window3%
ControlSend,,{p up},ahk_pid %window4%
ControlSend,,{p up},ahk_pid %window5%
ControlSend,,{p up},ahk_pid %window6%
ControlSend,,{p up},ahk_pid %window7%
ControlSend,,{p up},ahk_pid %window8%
ControlSend,,{p up},ahk_pid %window9%
ControlSend,,{p up},ahk_pid %window10%
return
~f::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{f down},ahk_pid %window1%
ControlSend,,{f down},ahk_pid %window2%
ControlSend,,{f down},ahk_pid %window3%
ControlSend,,{f down},ahk_pid %window4%
ControlSend,,{f down},ahk_pid %window5%
ControlSend,,{f down},ahk_pid %window6%
ControlSend,,{f down},ahk_pid %window7%
ControlSend,,{f down},ahk_pid %window8%
ControlSend,,{f down},ahk_pid %window9%
ControlSend,,{f down},ahk_pid %window10%
}
return
~f up::
ControlSend,,{f up},ahk_pid %window1%
ControlSend,,{f up},ahk_pid %window2%
ControlSend,,{f up},ahk_pid %window3%
ControlSend,,{f up},ahk_pid %window4%
ControlSend,,{f up},ahk_pid %window5%
ControlSend,,{f up},ahk_pid %window6%
ControlSend,,{f up},ahk_pid %window7%
ControlSend,,{f up},ahk_pid %window8%
ControlSend,,{f up},ahk_pid %window9%
ControlSend,,{f up},ahk_pid %window10%
return
~g::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{g down},ahk_pid %window1%
ControlSend,,{g down},ahk_pid %window2%
ControlSend,,{g down},ahk_pid %window3%
ControlSend,,{g down},ahk_pid %window4%
ControlSend,,{g down},ahk_pid %window5%
ControlSend,,{g down},ahk_pid %window6%
ControlSend,,{g down},ahk_pid %window7%
ControlSend,,{g down},ahk_pid %window8%
ControlSend,,{g down},ahk_pid %window9%
ControlSend,,{g down},ahk_pid %window10%
}
return
~g up::
ControlSend,,{g up},ahk_pid %window1%
ControlSend,,{g up},ahk_pid %window2%
ControlSend,,{g up},ahk_pid %window3%
ControlSend,,{g up},ahk_pid %window4%
ControlSend,,{g up},ahk_pid %window5%
ControlSend,,{g up},ahk_pid %window6%
ControlSend,,{g up},ahk_pid %window7%
ControlSend,,{g up},ahk_pid %window8%
ControlSend,,{g up},ahk_pid %window9%
ControlSend,,{g up},ahk_pid %window10%
return
~h::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{h down},ahk_pid %window1%
ControlSend,,{h down},ahk_pid %window2%
ControlSend,,{h down},ahk_pid %window3%
ControlSend,,{h down},ahk_pid %window4%
ControlSend,,{h down},ahk_pid %window5%
ControlSend,,{h down},ahk_pid %window6%
ControlSend,,{h down},ahk_pid %window7%
ControlSend,,{h down},ahk_pid %window8%
ControlSend,,{h down},ahk_pid %window9%
ControlSend,,{h down},ahk_pid %window10%
}
return
~h up::
ControlSend,,{h up},ahk_pid %window1%
ControlSend,,{h up},ahk_pid %window2%
ControlSend,,{h up},ahk_pid %window3%
ControlSend,,{h up},ahk_pid %window4%
ControlSend,,{h up},ahk_pid %window5%
ControlSend,,{h up},ahk_pid %window6%
ControlSend,,{h up},ahk_pid %window7%
ControlSend,,{h up},ahk_pid %window8%
ControlSend,,{h up},ahk_pid %window9%
ControlSend,,{h up},ahk_pid %window10%
return
~j::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{j down},ahk_pid %window1%
ControlSend,,{j down},ahk_pid %window2%
ControlSend,,{j down},ahk_pid %window3%
ControlSend,,{j down},ahk_pid %window4%
ControlSend,,{j down},ahk_pid %window5%
ControlSend,,{j down},ahk_pid %window6%
ControlSend,,{j down},ahk_pid %window7%
ControlSend,,{j down},ahk_pid %window8%
ControlSend,,{j down},ahk_pid %window9%
ControlSend,,{j down},ahk_pid %window10%
}
return
~j up::
ControlSend,,{j up},ahk_pid %window1%
ControlSend,,{j up},ahk_pid %window2%
ControlSend,,{j up},ahk_pid %window3%
ControlSend,,{j up},ahk_pid %window4%
ControlSend,,{j up},ahk_pid %window5%
ControlSend,,{j up},ahk_pid %window6%
ControlSend,,{j up},ahk_pid %window7%
ControlSend,,{j up},ahk_pid %window8%
ControlSend,,{j up},ahk_pid %window9%
ControlSend,,{j up},ahk_pid %window10%
return
~k::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{k down},ahk_pid %window1%
ControlSend,,{k down},ahk_pid %window2%
ControlSend,,{k down},ahk_pid %window3%
ControlSend,,{k down},ahk_pid %window4%
ControlSend,,{k down},ahk_pid %window5%
ControlSend,,{k down},ahk_pid %window6%
ControlSend,,{k down},ahk_pid %window7%
ControlSend,,{k down},ahk_pid %window8%
ControlSend,,{k down},ahk_pid %window9%
ControlSend,,{k down},ahk_pid %window10%
}
return
~k up::
ControlSend,,{k up},ahk_pid %window1%
ControlSend,,{k up},ahk_pid %window2%
ControlSend,,{k up},ahk_pid %window3%
ControlSend,,{k up},ahk_pid %window4%
ControlSend,,{k up},ahk_pid %window5%
ControlSend,,{k up},ahk_pid %window6%
ControlSend,,{k up},ahk_pid %window7%
ControlSend,,{k up},ahk_pid %window8%
ControlSend,,{k up},ahk_pid %window9%
ControlSend,,{k up},ahk_pid %window10%
return
~l::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{l down},ahk_pid %window1%
ControlSend,,{l down},ahk_pid %window2%
ControlSend,,{l down},ahk_pid %window3%
ControlSend,,{l down},ahk_pid %window4%
ControlSend,,{l down},ahk_pid %window5%
ControlSend,,{l down},ahk_pid %window6%
ControlSend,,{l down},ahk_pid %window7%
ControlSend,,{l down},ahk_pid %window8%
ControlSend,,{l down},ahk_pid %window9%
ControlSend,,{l down},ahk_pid %window10%
}
return
~l up::
ControlSend,,{l up},ahk_pid %window1%
ControlSend,,{l up},ahk_pid %window2%
ControlSend,,{l up},ahk_pid %window3%
ControlSend,,{l up},ahk_pid %window4%
ControlSend,,{l up},ahk_pid %window5%
ControlSend,,{l up},ahk_pid %window6%
ControlSend,,{l up},ahk_pid %window7%
ControlSend,,{l up},ahk_pid %window8%
ControlSend,,{l up},ahk_pid %window9%
ControlSend,,{l up},ahk_pid %window10%
return
~z::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{z down},ahk_pid %window1%
ControlSend,,{z down},ahk_pid %window2%
ControlSend,,{z down},ahk_pid %window3%
ControlSend,,{z down},ahk_pid %window4%
ControlSend,,{z down},ahk_pid %window5%
ControlSend,,{z down},ahk_pid %window6%
ControlSend,,{z down},ahk_pid %window7%
ControlSend,,{z down},ahk_pid %window8%
ControlSend,,{z down},ahk_pid %window9%
ControlSend,,{z down},ahk_pid %window10%
}
return
~z up::
ControlSend,,{z up},ahk_pid %window1%
ControlSend,,{z up},ahk_pid %window2%
ControlSend,,{z up},ahk_pid %window3%
ControlSend,,{z up},ahk_pid %window4%
ControlSend,,{z up},ahk_pid %window5%
ControlSend,,{z up},ahk_pid %window6%
ControlSend,,{z up},ahk_pid %window7%
ControlSend,,{z up},ahk_pid %window8%
ControlSend,,{z up},ahk_pid %window9%
ControlSend,,{z up},ahk_pid %window10%
return
~x::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{x down},ahk_pid %window1%
ControlSend,,{x down},ahk_pid %window2%
ControlSend,,{x down},ahk_pid %window3%
ControlSend,,{x down},ahk_pid %window4%
ControlSend,,{x down},ahk_pid %window5%
ControlSend,,{x down},ahk_pid %window6%
ControlSend,,{x down},ahk_pid %window7%
ControlSend,,{x down},ahk_pid %window8%
ControlSend,,{x down},ahk_pid %window9%
ControlSend,,{x down},ahk_pid %window10%
}
return
~x up::
ControlSend,,{x up},ahk_pid %window1%
ControlSend,,{x up},ahk_pid %window2%
ControlSend,,{x up},ahk_pid %window3%
ControlSend,,{x up},ahk_pid %window4%
ControlSend,,{x up},ahk_pid %window5%
ControlSend,,{x up},ahk_pid %window6%
ControlSend,,{x up},ahk_pid %window7%
ControlSend,,{x up},ahk_pid %window8%
ControlSend,,{x up},ahk_pid %window9%
ControlSend,,{x up},ahk_pid %window10%
return
~c::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{c down},ahk_pid %window1%
ControlSend,,{c down},ahk_pid %window2%
ControlSend,,{c down},ahk_pid %window3%
ControlSend,,{c down},ahk_pid %window4%
ControlSend,,{c down},ahk_pid %window5%
ControlSend,,{c down},ahk_pid %window6%
ControlSend,,{c down},ahk_pid %window7%
ControlSend,,{c down},ahk_pid %window8%
ControlSend,,{c down},ahk_pid %window9%
ControlSend,,{c down},ahk_pid %window10%
}
return
~c up::
ControlSend,,{c up},ahk_pid %window1%
ControlSend,,{c up},ahk_pid %window2%
ControlSend,,{c up},ahk_pid %window3%
ControlSend,,{c up},ahk_pid %window4%
ControlSend,,{c up},ahk_pid %window5%
ControlSend,,{c up},ahk_pid %window6%
ControlSend,,{c up},ahk_pid %window7%
ControlSend,,{c up},ahk_pid %window8%
ControlSend,,{c up},ahk_pid %window9%
ControlSend,,{c up},ahk_pid %window10%
return
~v::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{v down},ahk_pid %window1%
ControlSend,,{v down},ahk_pid %window2%
ControlSend,,{v down},ahk_pid %window3%
ControlSend,,{v down},ahk_pid %window4%
ControlSend,,{v down},ahk_pid %window5%
ControlSend,,{v down},ahk_pid %window6%
ControlSend,,{v down},ahk_pid %window7%
ControlSend,,{v down},ahk_pid %window8%
ControlSend,,{v down},ahk_pid %window9%
ControlSend,,{v down},ahk_pid %window10%
}
return
~v up::
ControlSend,,{v up},ahk_pid %window1%
ControlSend,,{v up},ahk_pid %window2%
ControlSend,,{v up},ahk_pid %window3%
ControlSend,,{v up},ahk_pid %window4%
ControlSend,,{v up},ahk_pid %window5%
ControlSend,,{v up},ahk_pid %window6%
ControlSend,,{v up},ahk_pid %window7%
ControlSend,,{v up},ahk_pid %window8%
ControlSend,,{v up},ahk_pid %window9%
ControlSend,,{v up},ahk_pid %window10%
return
~b::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{b down},ahk_pid %window1%
ControlSend,,{b down},ahk_pid %window2%
ControlSend,,{b down},ahk_pid %window3%
ControlSend,,{b down},ahk_pid %window4%
ControlSend,,{b down},ahk_pid %window5%
ControlSend,,{b down},ahk_pid %window6%
ControlSend,,{b down},ahk_pid %window7%
ControlSend,,{b down},ahk_pid %window8%
ControlSend,,{b down},ahk_pid %window9%
ControlSend,,{b down},ahk_pid %window10%
}
return
~b up::
ControlSend,,{b up},ahk_pid %window1%
ControlSend,,{b up},ahk_pid %window2%
ControlSend,,{b up},ahk_pid %window3%
ControlSend,,{b up},ahk_pid %window4%
ControlSend,,{b up},ahk_pid %window5%
ControlSend,,{b up},ahk_pid %window6%
ControlSend,,{b up},ahk_pid %window7%
ControlSend,,{b up},ahk_pid %window8%
ControlSend,,{b up},ahk_pid %window9%
ControlSend,,{b up},ahk_pid %window10%
return
~n::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{n down},ahk_pid %window1%
ControlSend,,{n down},ahk_pid %window2%
ControlSend,,{n down},ahk_pid %window3%
ControlSend,,{n down},ahk_pid %window4%
ControlSend,,{n down},ahk_pid %window5%
ControlSend,,{n down},ahk_pid %window6%
ControlSend,,{n down},ahk_pid %window7%
ControlSend,,{n down},ahk_pid %window8%
ControlSend,,{n down},ahk_pid %window9%
ControlSend,,{n down},ahk_pid %window10%
}
return
~n up::
ControlSend,,{n up},ahk_pid %window1%
ControlSend,,{n up},ahk_pid %window2%
ControlSend,,{n up},ahk_pid %window3%
ControlSend,,{n up},ahk_pid %window4%
ControlSend,,{n up},ahk_pid %window5%
ControlSend,,{n up},ahk_pid %window6%
ControlSend,,{n up},ahk_pid %window7%
ControlSend,,{n up},ahk_pid %window8%
ControlSend,,{n up},ahk_pid %window9%
ControlSend,,{n up},ahk_pid %window10%
return
~m::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{m down},ahk_pid %window1%
ControlSend,,{m down},ahk_pid %window2%
ControlSend,,{m down},ahk_pid %window3%
ControlSend,,{m down},ahk_pid %window4%
ControlSend,,{m down},ahk_pid %window5%
ControlSend,,{m down},ahk_pid %window6%
ControlSend,,{m down},ahk_pid %window7%
ControlSend,,{m down},ahk_pid %window8%
ControlSend,,{m down},ahk_pid %window9%
ControlSend,,{m down},ahk_pid %window10%
}
return
~m up::
ControlSend,,{m up},ahk_pid %window1%
ControlSend,,{m up},ahk_pid %window2%
ControlSend,,{m up},ahk_pid %window3%
ControlSend,,{m up},ahk_pid %window4%
ControlSend,,{m up},ahk_pid %window5%
ControlSend,,{m up},ahk_pid %window6%
ControlSend,,{m up},ahk_pid %window7%
ControlSend,,{m up},ahk_pid %window8%
ControlSend,,{m up},ahk_pid %window9%
ControlSend,,{m up},ahk_pid %window10%
return
return
~1::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{1 down},ahk_pid %window1%
ControlSend,,{1 down},ahk_pid %window2%
ControlSend,,{1 down},ahk_pid %window3%
ControlSend,,{1 down},ahk_pid %window4%
ControlSend,,{1 down},ahk_pid %window5%
ControlSend,,{1 down},ahk_pid %window6%
ControlSend,,{1 down},ahk_pid %window7%
ControlSend,,{1 down},ahk_pid %window8%
ControlSend,,{1 down},ahk_pid %window9%
ControlSend,,{1 down},ahk_pid %window10%
}
return
~1 up::
ControlSend,,{1 up},ahk_pid %window1%
ControlSend,,{1 up},ahk_pid %window2%
ControlSend,,{1 up},ahk_pid %window3%
ControlSend,,{1 up},ahk_pid %window4%
ControlSend,,{1 up},ahk_pid %window5%
ControlSend,,{1 up},ahk_pid %window6%
ControlSend,,{1 up},ahk_pid %window7%
ControlSend,,{1 up},ahk_pid %window8%
ControlSend,,{1 up},ahk_pid %window9%
ControlSend,,{1 up},ahk_pid %window10%
return
~2::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{2 down},ahk_pid %window1%
ControlSend,,{2 down},ahk_pid %window2%
ControlSend,,{2 down},ahk_pid %window3%
ControlSend,,{2 down},ahk_pid %window4%
ControlSend,,{2 down},ahk_pid %window5%
ControlSend,,{2 down},ahk_pid %window6%
ControlSend,,{2 down},ahk_pid %window7%
ControlSend,,{2 down},ahk_pid %window8%
ControlSend,,{2 down},ahk_pid %window9%
ControlSend,,{2 down},ahk_pid %window10%
}
return
~2 up::
ControlSend,,{2 up},ahk_pid %window1%
ControlSend,,{2 up},ahk_pid %window2%
ControlSend,,{2 up},ahk_pid %window3%
ControlSend,,{2 up},ahk_pid %window4%
ControlSend,,{2 up},ahk_pid %window5%
ControlSend,,{2 up},ahk_pid %window6%
ControlSend,,{2 up},ahk_pid %window7%
ControlSend,,{2 up},ahk_pid %window8%
ControlSend,,{2 up},ahk_pid %window9%
ControlSend,,{2 up},ahk_pid %window10%
return
~3::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{3 down},ahk_pid %window1%
ControlSend,,{3 down},ahk_pid %window2%
ControlSend,,{3 down},ahk_pid %window3%
ControlSend,,{3 down},ahk_pid %window4%
ControlSend,,{3 down},ahk_pid %window5%
ControlSend,,{3 down},ahk_pid %window6%
ControlSend,,{3 down},ahk_pid %window7%
ControlSend,,{3 down},ahk_pid %window8%
ControlSend,,{3 down},ahk_pid %window9%
ControlSend,,{3 down},ahk_pid %window10%
}
return
~3 up::
ControlSend,,{3 up},ahk_pid %window1%
ControlSend,,{3 up},ahk_pid %window2%
ControlSend,,{3 up},ahk_pid %window3%
ControlSend,,{3 up},ahk_pid %window4%
ControlSend,,{3 up},ahk_pid %window5%
ControlSend,,{3 up},ahk_pid %window6%
ControlSend,,{3 up},ahk_pid %window7%
ControlSend,,{3 up},ahk_pid %window8%
ControlSend,,{3 up},ahk_pid %window9%
ControlSend,,{3 up},ahk_pid %window10%
return
~4::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{4 down},ahk_pid %window1%
ControlSend,,{4 down},ahk_pid %window2%
ControlSend,,{4 down},ahk_pid %window3%
ControlSend,,{4 down},ahk_pid %window4%
ControlSend,,{4 down},ahk_pid %window5%
ControlSend,,{4 down},ahk_pid %window6%
ControlSend,,{4 down},ahk_pid %window7%
ControlSend,,{4 down},ahk_pid %window8%
ControlSend,,{4 down},ahk_pid %window9%
ControlSend,,{4 down},ahk_pid %window10%
}
return
~4 up::
ControlSend,,{4 up},ahk_pid %window1%
ControlSend,,{4 up},ahk_pid %window2%
ControlSend,,{4 up},ahk_pid %window3%
ControlSend,,{4 up},ahk_pid %window4%
ControlSend,,{4 up},ahk_pid %window5%
ControlSend,,{4 up},ahk_pid %window6%
ControlSend,,{4 up},ahk_pid %window7%
ControlSend,,{4 up},ahk_pid %window8%
ControlSend,,{4 up},ahk_pid %window9%
ControlSend,,{4 up},ahk_pid %window10%
return
~5::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{5 down},ahk_pid %window1%
ControlSend,,{5 down},ahk_pid %window2%
ControlSend,,{5 down},ahk_pid %window3%
ControlSend,,{5 down},ahk_pid %window4%
ControlSend,,{5 down},ahk_pid %window5%
ControlSend,,{5 down},ahk_pid %window6%
ControlSend,,{5 down},ahk_pid %window7%
ControlSend,,{5 down},ahk_pid %window8%
ControlSend,,{5 down},ahk_pid %window9%
ControlSend,,{5 down},ahk_pid %window10%
}
return
~5 up::
ControlSend,,{5 up},ahk_pid %window1%
ControlSend,,{5 up},ahk_pid %window2%
ControlSend,,{5 up},ahk_pid %window3%
ControlSend,,{5 up},ahk_pid %window4%
ControlSend,,{5 up},ahk_pid %window5%
ControlSend,,{5 up},ahk_pid %window6%
ControlSend,,{5 up},ahk_pid %window7%
ControlSend,,{5 up},ahk_pid %window8%
ControlSend,,{5 up},ahk_pid %window9%
ControlSend,,{5 up},ahk_pid %window10%
return
~6::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{6 down},ahk_pid %window1%
ControlSend,,{6 down},ahk_pid %window2%
ControlSend,,{6 down},ahk_pid %window3%
ControlSend,,{6 down},ahk_pid %window4%
ControlSend,,{6 down},ahk_pid %window5%
ControlSend,,{6 down},ahk_pid %window6%
ControlSend,,{6 down},ahk_pid %window7%
ControlSend,,{6 down},ahk_pid %window8%
ControlSend,,{6 down},ahk_pid %window9%
ControlSend,,{6 down},ahk_pid %window10%
}
return
~6 up::
ControlSend,,{6 up},ahk_pid %window1%
ControlSend,,{6 up},ahk_pid %window2%
ControlSend,,{6 up},ahk_pid %window3%
ControlSend,,{6 up},ahk_pid %window4%
ControlSend,,{6 up},ahk_pid %window5%
ControlSend,,{6 up},ahk_pid %window6%
ControlSend,,{6 up},ahk_pid %window7%
ControlSend,,{6 up},ahk_pid %window8%
ControlSend,,{6 up},ahk_pid %window9%
ControlSend,,{6 up},ahk_pid %window10%
return
~7::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{7 down},ahk_pid %window1%
ControlSend,,{7 down},ahk_pid %window2%
ControlSend,,{7 down},ahk_pid %window3%
ControlSend,,{7 down},ahk_pid %window4%
ControlSend,,{7 down},ahk_pid %window5%
ControlSend,,{7 down},ahk_pid %window6%
ControlSend,,{7 down},ahk_pid %window7%
ControlSend,,{7 down},ahk_pid %window8%
ControlSend,,{7 down},ahk_pid %window9%
ControlSend,,{7 down},ahk_pid %window10%
}
return
~7 up::
ControlSend,,{7 up},ahk_pid %window1%
ControlSend,,{7 up},ahk_pid %window2%
ControlSend,,{7 up},ahk_pid %window3%
ControlSend,,{7 up},ahk_pid %window4%
ControlSend,,{7 up},ahk_pid %window5%
ControlSend,,{7 up},ahk_pid %window6%
ControlSend,,{7 up},ahk_pid %window7%
ControlSend,,{7 up},ahk_pid %window8%
ControlSend,,{7 up},ahk_pid %window9%
ControlSend,,{7 up},ahk_pid %window10%
return
~8::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{8 down},ahk_pid %window1%
ControlSend,,{8 down},ahk_pid %window2%
ControlSend,,{8 down},ahk_pid %window3%
ControlSend,,{8 down},ahk_pid %window4%
ControlSend,,{8 down},ahk_pid %window5%
ControlSend,,{8 down},ahk_pid %window6%
ControlSend,,{8 down},ahk_pid %window7%
ControlSend,,{8 down},ahk_pid %window8%
ControlSend,,{8 down},ahk_pid %window9%
ControlSend,,{8 down},ahk_pid %window10%
}
return
~8 up::
ControlSend,,{8 up},ahk_pid %window1%
ControlSend,,{8 up},ahk_pid %window2%
ControlSend,,{8 up},ahk_pid %window3%
ControlSend,,{8 up},ahk_pid %window4%
ControlSend,,{8 up},ahk_pid %window5%
ControlSend,,{8 up},ahk_pid %window6%
ControlSend,,{8 up},ahk_pid %window7%
ControlSend,,{8 up},ahk_pid %window8%
ControlSend,,{8 up},ahk_pid %window9%
ControlSend,,{8 up},ahk_pid %window10%
return
~9::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{9 down},ahk_pid %window1%
ControlSend,,{9 down},ahk_pid %window2%
ControlSend,,{9 down},ahk_pid %window3%
ControlSend,,{9 down},ahk_pid %window4%
ControlSend,,{9 down},ahk_pid %window5%
ControlSend,,{9 down},ahk_pid %window6%
ControlSend,,{9 down},ahk_pid %window7%
ControlSend,,{9 down},ahk_pid %window8%
ControlSend,,{9 down},ahk_pid %window9%
ControlSend,,{9 down},ahk_pid %window10%
}
return
~9 up::
ControlSend,,{9 up},ahk_pid %window1%
ControlSend,,{9 up},ahk_pid %window2%
ControlSend,,{9 up},ahk_pid %window3%
ControlSend,,{9 up},ahk_pid %window4%
ControlSend,,{9 up},ahk_pid %window5%
ControlSend,,{9 up},ahk_pid %window6%
ControlSend,,{9 up},ahk_pid %window7%
ControlSend,,{9 up},ahk_pid %window8%
ControlSend,,{9 up},ahk_pid %window9%
ControlSend,,{9 up},ahk_pid %window10%
return
~0::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{0 down},ahk_pid %window1%
ControlSend,,{0 down},ahk_pid %window2%
ControlSend,,{0 down},ahk_pid %window3%
ControlSend,,{0 down},ahk_pid %window4%
ControlSend,,{0 down},ahk_pid %window5%
ControlSend,,{0 down},ahk_pid %window6%
ControlSend,,{0 down},ahk_pid %window7%
ControlSend,,{0 down},ahk_pid %window8%
ControlSend,,{0 down},ahk_pid %window9%
ControlSend,,{0 down},ahk_pid %window10%
}
return
~0 up::
ControlSend,,{0 up},ahk_pid %window1%
ControlSend,,{0 up},ahk_pid %window2%
ControlSend,,{0 up},ahk_pid %window3%
ControlSend,,{0 up},ahk_pid %window4%
ControlSend,,{0 up},ahk_pid %window5%
ControlSend,,{0 up},ahk_pid %window6%
ControlSend,,{0 up},ahk_pid %window7%
ControlSend,,{0 up},ahk_pid %window8%
ControlSend,,{0 up},ahk_pid %window9%
ControlSend,,{0 up},ahk_pid %window10%
return
~Space::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{Space down},ahk_pid %window1%
ControlSend,,{Space down},ahk_pid %window2%
ControlSend,,{Space down},ahk_pid %window3%
ControlSend,,{Space down},ahk_pid %window4%
ControlSend,,{Space down},ahk_pid %window5%
ControlSend,,{Space down},ahk_pid %window6%
ControlSend,,{Space down},ahk_pid %window7%
ControlSend,,{Space down},ahk_pid %window8%
ControlSend,,{Space down},ahk_pid %window9%
ControlSend,,{Space down},ahk_pid %window10%
}
return
~Space up::
ControlSend,,{Space up},ahk_pid %window1%
ControlSend,,{Space up},ahk_pid %window2%
ControlSend,,{Space up},ahk_pid %window3%
ControlSend,,{Space up},ahk_pid %window4%
ControlSend,,{Space up},ahk_pid %window5%
ControlSend,,{Space up},ahk_pid %window6%
ControlSend,,{Space up},ahk_pid %window7%
ControlSend,,{Space up},ahk_pid %window8%
ControlSend,,{Space up},ahk_pid %window9%
ControlSend,,{Space up},ahk_pid %window10%
return
~Esc::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{Esc down},ahk_pid %window1%
ControlSend,,{Esc down},ahk_pid %window2%
ControlSend,,{Esc down},ahk_pid %window3%
ControlSend,,{Esc down},ahk_pid %window4%
ControlSend,,{Esc down},ahk_pid %window5%
ControlSend,,{Esc down},ahk_pid %window6%
ControlSend,,{Esc down},ahk_pid %window7%
ControlSend,,{Esc down},ahk_pid %window8%
ControlSend,,{Esc down},ahk_pid %window9%
ControlSend,,{Esc down},ahk_pid %window10%
}
return
~Esc up::
ControlSend,,{Esc up},ahk_pid %window1%
ControlSend,,{Esc up},ahk_pid %window2%
ControlSend,,{Esc up},ahk_pid %window3%
ControlSend,,{Esc up},ahk_pid %window4%
ControlSend,,{Esc up},ahk_pid %window5%
ControlSend,,{Esc up},ahk_pid %window6%
ControlSend,,{Esc up},ahk_pid %window7%
ControlSend,,{Esc up},ahk_pid %window8%
ControlSend,,{Esc up},ahk_pid %window9%
ControlSend,,{Esc up},ahk_pid %window10%
return
~Tab::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{Tab down},ahk_pid %window1%
ControlSend,,{Tab down},ahk_pid %window2%
ControlSend,,{Tab down},ahk_pid %window3%
ControlSend,,{Tab down},ahk_pid %window4%
ControlSend,,{Tab down},ahk_pid %window5%
ControlSend,,{Tab down},ahk_pid %window6%
ControlSend,,{Tab down},ahk_pid %window7%
ControlSend,,{Tab down},ahk_pid %window8%
ControlSend,,{Tab down},ahk_pid %window9%
ControlSend,,{Tab down},ahk_pid %window10%
}
return
~Tab up::
ControlSend,,{Tab up},ahk_pid %window1%
ControlSend,,{Tab up},ahk_pid %window2%
ControlSend,,{Tab up},ahk_pid %window3%
ControlSend,,{Tab up},ahk_pid %window4%
ControlSend,,{Tab up},ahk_pid %window5%
ControlSend,,{Tab up},ahk_pid %window6%
ControlSend,,{Tab up},ahk_pid %window7%
ControlSend,,{Tab up},ahk_pid %window8%
ControlSend,,{Tab up},ahk_pid %window9%
ControlSend,,{Tab up},ahk_pid %window10%
return
~Enter::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{Enter down},ahk_pid %window1%
ControlSend,,{Enter down},ahk_pid %window2%
ControlSend,,{Enter down},ahk_pid %window3%
ControlSend,,{Enter down},ahk_pid %window4%
ControlSend,,{Enter down},ahk_pid %window5%
ControlSend,,{Enter down},ahk_pid %window6%
ControlSend,,{Enter down},ahk_pid %window7%
ControlSend,,{Enter down},ahk_pid %window8%
ControlSend,,{Enter down},ahk_pid %window9%
ControlSend,,{Enter down},ahk_pid %window10%
}
return
~Enter up::
ControlSend,,{Enter up},ahk_pid %window1%
ControlSend,,{Enter up},ahk_pid %window2%
ControlSend,,{Enter up},ahk_pid %window3%
ControlSend,,{Enter up},ahk_pid %window4%
ControlSend,,{Enter up},ahk_pid %window5%
ControlSend,,{Enter up},ahk_pid %window6%
ControlSend,,{Enter up},ahk_pid %window7%
ControlSend,,{Enter up},ahk_pid %window8%
ControlSend,,{Enter up},ahk_pid %window9%
ControlSend,,{Enter up},ahk_pid %window10%
return
~Backspace::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{Backspace down},ahk_pid %window1%
ControlSend,,{Backspace down},ahk_pid %window2%
ControlSend,,{Backspace down},ahk_pid %window3%
ControlSend,,{Backspace down},ahk_pid %window4%
ControlSend,,{Backspace down},ahk_pid %window5%
ControlSend,,{Backspace down},ahk_pid %window6%
ControlSend,,{Backspace down},ahk_pid %window7%
ControlSend,,{Backspace down},ahk_pid %window8%
ControlSend,,{Backspace down},ahk_pid %window9%
ControlSend,,{Backspace down},ahk_pid %window10%
}
return
~Backspace up::
ControlSend,,{Backspace up},ahk_pid %window1%
ControlSend,,{Backspace up},ahk_pid %window2%
ControlSend,,{Backspace up},ahk_pid %window3%
ControlSend,,{Backspace up},ahk_pid %window4%
ControlSend,,{Backspace up},ahk_pid %window5%
ControlSend,,{Backspace up},ahk_pid %window6%
ControlSend,,{Backspace up},ahk_pid %window7%
ControlSend,,{Backspace up},ahk_pid %window8%
ControlSend,,{Backspace up},ahk_pid %window9%
ControlSend,,{Backspace up},ahk_pid %window10%
return
~`::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{`` down},ahk_pid %window1%
ControlSend,,{`` down},ahk_pid %window2%
ControlSend,,{`` down},ahk_pid %window3%
ControlSend,,{`` down},ahk_pid %window4%
ControlSend,,{`` down},ahk_pid %window5%
ControlSend,,{`` down},ahk_pid %window6%
ControlSend,,{`` down},ahk_pid %window7%
ControlSend,,{`` down},ahk_pid %window8%
ControlSend,,{`` down},ahk_pid %window9%
ControlSend,,{`` down},ahk_pid %window10%
}
return
~` up::
ControlSend,,{`` up},ahk_pid %window1%
ControlSend,,{`` up},ahk_pid %window2%
ControlSend,,{`` up},ahk_pid %window3%
ControlSend,,{`` up},ahk_pid %window4%
ControlSend,,{`` up},ahk_pid %window5%
ControlSend,,{`` up},ahk_pid %window6%
ControlSend,,{`` up},ahk_pid %window7%
ControlSend,,{`` up},ahk_pid %window8%
ControlSend,,{`` up},ahk_pid %window9%
ControlSend,,{`` up},ahk_pid %window10%
return
~/::
WinGetTitle,ActiveWindow,A
if (ActiveWindow == "Master Window"){
ControlSend,,{/ down},ahk_pid %window1%
ControlSend,,{/ down},ahk_pid %window2%
ControlSend,,{/ down},ahk_pid %window3%
ControlSend,,{/ down},ahk_pid %window4%
ControlSend,,{/ down},ahk_pid %window5%
ControlSend,,{/ down},ahk_pid %window6%
ControlSend,,{/ down},ahk_pid %window7%
ControlSend,,{/ down},ahk_pid %window8%
ControlSend,,{/ down},ahk_pid %window9%
ControlSend,,{/ down},ahk_pid %window10%
}
return
~/ up::
ControlSend,,{/ up},ahk_pid %window1%
ControlSend,,{/ up},ahk_pid %window2%
ControlSend,,{/ up},ahk_pid %window3%
ControlSend,,{/ up},ahk_pid %window4%
ControlSend,,{/ up},ahk_pid %window5%
ControlSend,,{/ up},ahk_pid %window6%
ControlSend,,{/ up},ahk_pid %window7%
ControlSend,,{/ up},ahk_pid %window8%
ControlSend,,{/ up},ahk_pid %window9%
ControlSend,,{/ up},ahk_pid %window10%
return
^Esc::ExitApp