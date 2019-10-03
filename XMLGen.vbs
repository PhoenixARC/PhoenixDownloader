Option Explicit

Dim oFS, oWS, oWN

Set oWS = WScript.CreateObject("WScript.Shell")
Set oWN = WScript.CreateObject("WScript.Network")
Set oFS = WScript.CreateObject("Scripting.FileSystemObject")

WScript.Echo "Created by PhoenixARC" & vbCrlf & vbCrlf & vbCrlf & _
"Based on DeViL303's XMLs"
Select Case InputBox ( _
"Enter menu item number then Click Ok. . ." & vbCrlf & vbCrlf & _
" [1] Playlist Options" & vbCrlf & _
" [2] View PhoenixARC's PSX-Place" & vbCrlf & _
" [3] View DeViL303's PSX-Place" & vbCrlf & _
"Main Menu")

Case "1"
Call sub1()
Case "2"
Call sub2()
Case "3"
Call sub3()
Case Else
WScript.Echo "You entered an invalid menu choice!"

End Select



Call CleanUp




Sub CleanUp()
Set oWS = Nothing
Set oWN = Nothing
Set oFS = Nothing
WScript.Quit
End Sub


Sub sub1()
Select Case InputBox ( _
"Playlist options:" & vbCrlf & vbCrlf & _
" [1] Create Playlist" & vbCrlf & _
" [2] Add Playlist Entry" & vbCrlf & _
" [3] Finish Playlist XMLs" & vbCrlf & _
" [4] Build Playlist PKG" & vbCrlf & _
" [5] Compile Main XML", _
"Main Menu")

Case "1"
Call sub4()
Case "2"
Call sub5()
Case "3"
Call sub6()
Case "4"
Call sub7()
Case "5"
Call sub8()
Case Else
WScript.Echo "You entered an invalid menu choice!"

End Select
End Sub


Sub sub2()
WScript.Echo "Opening PhoenixARC's PSX-Place"
CreateObject("WScript.Shell").Run("https://www.psx-place.com/members/phoenixarc.43472/")
End Sub


Sub sub3()
WScript.Echo "Opening DeViL303's PSX-Place"

CreateObject("WScript.Shell").Run("https://www.psx-place.com/members/devil303.22544/")

End Sub

Sub sub4()
dim a
a = inputbox("Podcast Number")
dim b
b = inputbox("Podcast Name")
dim c
c = inputbox("Podcast id")
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("podno.txt",2,true)
objFileToWrite.WriteLine(a)
objFileToWrite.Close
dim objFileToWrite
Set objFileToWrite = Nothing
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("podname.txt",2,true)
objFileToWrite.WriteLine(b)
objFileToWrite.Close
Set objFileToWrite = Nothing
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("podid.txt",2,true)
objFileToWrite.WriteLine(c)
objFileToWrite.Close
Set objFileToWrite = Nothing
CreateObject("WScript.Shell").Run("createpodcast.bat")
End Sub


Sub sub5()
dim a
a = inputbox("Podcast Number")
dim b
b = inputbox("Podcast Name")
dim c
c = inputbox("Podcast id")
dim e
e = inputbox("Entry Name")
dim f
f = inputbox("Entry Duration")
dim g
g = inputbox("Item Number")
dim h
h = inputbox("URL (HTTP:// only)")
dim i
i = inputbox("Entry Description")
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("ename.txt",2,true)
objFileToWrite.WriteLine(e)
objFileToWrite.Close
dim objFileToWrite
Set objFileToWrite = Nothing
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("dur.txt",2,true)
objFileToWrite.WriteLine(f)
objFileToWrite.Close
Set objFileToWrite = Nothing
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("itemno.txt",2,true)
objFileToWrite.WriteLine(g)
objFileToWrite.Close
Set objFileToWrite = Nothing
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("url.txt",2,true)
objFileToWrite.WriteLine(h)
objFileToWrite.Close
Set objFileToWrite = Nothing
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("desc.txt",2,true)
objFileToWrite.WriteLine(i)
objFileToWrite.Close
Set objFileToWrite = Nothing
CreateObject("WScript.Shell").Run("gentry.bat")
End Sub

Sub sub6()
dim a
a = inputbox("Podcast Number")
dim c
c = inputbox("Podcast id")
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("podno.txt",2,true)
objFileToWrite.WriteLine(a)
objFileToWrite.Close
dim objFileToWrite
Set objFileToWrite = Nothing
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("podid.txt",2,true)
objFileToWrite.WriteLine(c)
objFileToWrite.Close
Set objFileToWrite = Nothing
CreateObject("WScript.Shell").Run("finni.bat")
End Sub

Sub sub8()
dim a
a = inputbox("Podcast Number")
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("podno.txt",2,true)
objFileToWrite.WriteLine(a)
objFileToWrite.Close
dim objFileToWrite
Set objFileToWrite = Nothing
CreateObject("WScript.Shell").Run("compile.bat")
End Sub

Sub sub7()
dim a
a = inputbox("Podcast Number")
Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("podno.txt",2,true)
objFileToWrite.WriteLine(a)
objFileToWrite.Close
dim objFileToWrite
Set objFileToWrite = Nothing
CreateObject("WScript.Shell").Run("build.bat")
End Sub