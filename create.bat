@echo off
echo =======================================
echo []  __  __          __               []
echo []  \ \/ / /\/\    / /               []
echo []   \  / /    \  / /                []
echo []   /  \/ /\/\ \/ /___              []
echo []  /_/\_\/    \/\____/              []
echo []                                   []
echo []                                   []
echo []                                   []
echo []                                   []
echo []             _            __  __   []
echo []    /\/\    /_\    /\ /\ /__\/__\  []
echo []   /    \  //_\\  / //_//_\ / \//  []
echo []  / /\/\ \/  _  \/ __ \//__/ _  \  []
echo []  \/    \/\_/ \_/\/  \/\__/\/ \_/  []
echo =======================================
echo                         Made by PhoenixARC
echo . >nul
echo . >nul
echo loading... please wait...
timeout 5 >NUL

:h1
cls
echo =================================
echo []    XML MAKER by PhoenixARC  []
echo =================================
echo Create Podcast:            1   []
echo Generate entry:            2   []
echo Generate item info:        3   []
echo Generate item description: 4   []
echo complete XML (run once):   5   []
echo How to compile into 1 xml: 6   []
echo Auto compile into 1 xml:   7   []
echo =================================
echo choose what you do.
set /p "opt=Choose 1-7: "
cls
if ["%opt%"] == ["1"] goto cp
if ["%opt%"] == ["2"] goto ge
if ["%opt%"] == ["3"] goto gii
if ["%opt%"] == ["4"] goto gid
if ["%opt%"] == ["5"] goto fin
if ["%opt%"] == ["6"] goto help
if ["%opt%"] == ["7"] goto compile_ovwrte
if ["%opt%"] == ["null"] goto error

:compile_ovwrte
set /p "podno=podcast#(no spaces)  PODCAST##: "
(
more path\PODCAST%podno%\USRDIR\1entries.xml
more path\PODCAST%podno%\USRDIR\2info.xml
more path\PODCAST%podno%\USRDIR\3urls.xml
)>>path\PODCAST%podno%\USRDIR\podcast.xml


:error
echo not a valid option!
timeout 3 >NUL
goto h1

:fin
set /p "podno=podcast#(no spaces)  PODCAST##: "
>nul findstr /c:"</XMBML>" path\PODCAST%podno%\USRDIR\podcast.xml && (
  echo Cannot finish a finished file!
  timeout 2 >NUL
  goto h1
) || (
(
echo ^</XMBML^>
)>>path\PODCAST%podno%\USRDIR\podcast.xml
echo finshed!
timeout 2 >NUL
goto h1
)
(
echo ^</XMBML^>
)>>path\PODCAST%podno%\USRDIR\podcast.xml

:help
echo 1. open all xmls in path\PODCAST##\USRDIR
echo 2. add contents of 1entries.xml to podcast.xml on next line down first
echo 3. add contents of 2info.xml to podcast.xml on next line down
echo 4. add contents of 3urls.xml to podcast.xml on next line down
echo 5. use XML Maker to complete XML "option 5"
echo press any key to return...
pause >NUL
goto h1

:ge
cls
set /p "podno=podcast#(no spaces)  PODCAST##: "
IF EXIST path\PODCAST%podno%\USRDIR\podcast.xml (
	goto ge1
) ELSE (
    echo error! podcast not existant!
	pause
	cls
	goto h1
)
:cp
set /p "podno=podcast#(no spaces)  PODCAST##: "
set /p "podname=Name your podcast: "
set /p "podid=podcast id (no spaces): "
timeout 3 >NUL
echo generating path...
timeout 2 >NUL
md path\PODCAST%podno%\USRDIR
(
echo ^<View id="main"^>
echo ^<Attributes^>
echo ^<Table key="%podid%_main"^>
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/the_%podid%_podcast.png^</String^>^</Pair^>
echo ^<Pair key="title"^>^<String^>The %podname% Podcast^</String^>^</Pair^>
echo ^<Pair key="info"^>^<String^>^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
echo ^<Items^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="%podid%_main" attr="%podid%_main" src="#%podid%_items"/^>
echo ^</Items^>
echo ^</View^>
)>>path\PODCAST%podno%\USRDIR\podcast.xml
cls
goto h1

:ge1
set /p "id=ID(no spaces): "
set /p "number=item#(no spaces/# only): "
set /p "name=Name: "
set /p "dur=Duration: "
timeout 3 ^>NUL
cls
(
echo ^<View id="%id%"^>
echo ^<Attributes^>
echo ^<Table key="item_%number%"^>
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/phoenix.png^</String^>^</Pair^>
echo ^<Pair key="title"^>^<String^>#00%number% %name%^</String^>^</Pair^>
echo ^<Pair key="info"^>^<String^> %dur% ^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
echo ^<Items^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="item_%number%" attr="item_%number%" src="#%id%00%number%_items"/^>
echo ^</Items^>
echo ^</View^>
)>>path\PODCAST%podno%\USRDIR\1entries.xml
pause
goto h1

:gid
set /p "podno=podcast#(no spaces)  PODCAST##: "
set /p "id=ID(no spaces): "
set /p "number=item#(no spaces/# only): "
set /p "desc=Desc: "
set /p "name=Name: "
set /p "dur=Duration: "
(
echo ^<View id="info_00%number%_item"^>
echo ^<Attributes^>
echo ^<Table key="info_%number%"^>
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png^</String^>^</Pair^>	
echo ^<Pair key="title"^>^<String^>%name%^</String^>^</Pair^>
echo ^<Pair key="info"^>^<String^>%desc%^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
echo ^<Items^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="info_00%number%" attr="info_00%number%"/^>
echo ^</Items^>
echo ^</View^>
)>>path\PODCAST%podno%\USRDIR\2info.xml
goto h1

:gii
set /p "podno=podcast#(no spaces)  PODCAST##: "
IF EXIST path\PODCAST%podno%\USRDIR\3urls.xml (
    goto gii1
) ELSE (
	goto gii0
	cls
)

:gii0
set /p "id=ID(no spaces): "
(
echo ^<View id="pspodcast00%id%_items"^>
echo ^<Attributes^>
)>>path\PODCAST%podno%\USRDIR\3urls.xml
goto gii1

:gii1
set /p "id=ID(no spaces): "
set /p "number=item#(no spaces/# only): "
set /p "url=URL(http only): "
(
echo ^<Table key="item_%id%_001"^> 
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png^</String^>^</Pair^> "
echo ^<Pair key="title"^>^<String^>   PLAY^</String^>^</Pair^> "
echo ^<Pair key="info"^>^<String^>^</String^>^</Pair^>
echo ^<Pair key="module_name"^>^<String^>webbrowser_plugin^</String^>^</Pair^> "
echo ^<Pair key="module_action"^>^<String^>%url%^</String^>^</Pair^> "
echo ^</Table^>
echo ^<Table key="info_00%number%_main"^> "
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png^</String^>^</Pair^> "
echo ^<Pair key="title"^>^<String^>   INFO^</String^>^</Pair^> "
echo ^<Pair key="info"^>^<String^>^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
echo ^<Items^>
echo ^<Item class="type:x-xmb/module-action" key="item_%id%_001" attr="item_%id%_001"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="info_00%number%_main" attr="info_00%number%_main" src="#info_00%number%_item"/^>
echo ^</Items^>
echo ^</View^> "
)>>path\PODCAST%podno%\USRDIR\3urls.xml
goto h1

 REM Made by PhoenixARC -- posted to PSX-Place.com
 