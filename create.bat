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
echo Create Podcast:            1   []
echo Generate entry:            2   []
echo Generate item info:        3   []
echo Generate item description: 4   []
echo =================================
echo choose what you do.
set /p "opt=Choose 1-4: "
cls
if ["%opt%"] == ["1"] goto cp
if ["%opt%"] == ["2"] goto ge
if ["%opt%"] == ["3"] goto gii
if ["%opt%"] == ["4"] goto gid
:ge
cls
set /p "podno=podcast#(no spaces)  PODCAST##: "
IF EXIST path\PODCAST%podno%\USRDIR\podcast.xml (
	goto c1
) ELSE (
    echo error! podcast not existant!
	pause
	cls
	goto h1
)
:c1
set /p "id=ID(no spaces): "
set /p "number=item#(no spaces/# only): "
set /p "name=Name: "
set /p "dur=Duration: "
pause
cls
echo generating code entry...
goto ge1

:cp
set /p "podno=podcast#(no spaces)  PODCAST##: "
set /p "podname=Name your podcast: "
set /p "podid=podcast id (no spaces): "
timeout 3 >NUL
echo generating path...
timeout 2 >NUL
md path\PODCAST%podno%\USRDIR\images
echo "<View id="main">" >>path\PODCAST%podno%\USRDIR\podcast.xml
echo "<Attributes>" >>path\PODCAST%podno%\USRDIR\podcast.xml
echo "<Table key="%podid%_main">" >>path\PODCAST%podno%\USRDIR\podcast.xml
echo "<Pair key="icon"><String>/dev_hdd0/game/PODCAST01/USRDIR/images/the_%podid%_podcast.png</String></Pair>" >>path\PODCAST%podno%\USRDIR\podcast.xml
echo "<Pair key="title"><String>The %podname% Podcast</String></Pair>" >>path\PODCAST%podno%\USRDIR\podcast.xml
echo "<Pair key="info"><String></String></Pair>" >>path\PODCAST%podno%\USRDIR\podcast.xml
echo "</Table>" >>path\PODCAST%podno%\USRDIR\podcast.xml
echo "</Attributes>" >>path\PODCAST%podno%\USRDIR\podcast.xml
echo "<Items>" >>path\PODCAST%podno%\USRDIR\podcast.xml
echo "<Query class="type:x-xmb/folder-pixmap" key="%podid%_main" attr="%podid%_main" src="#%podid%_items"/>" >>path\PODCAST%podno%\USRDIR\podcast.xml
echo "</Items>" >>path\PODCAST%podno%\USRDIR\podcast.xml
echo "</View>" >>path\PODCAST%podno%\USRDIR\podcast.xml
cls
goto h1

:ge1
set /p "id=ID(no spaces): "
set /p "number=item#(no spaces/# only): "
set /p "podno=podcast#(no spaces)  PODCAST##: "
set /p "name=Name: "
set /p "dur=Duration: "
timeout 3 >NUL
cls
echo "<View id="%id%">" >>path\PODCAST%podno%\USRDIR\1entries.xml
echo "<Attributes>" >>path\PODCAST%podno%\USRDIR\1entries.xml
echo "<Table key="item_%number%">" >>path\PODCAST%podno%\USRDIR\1entries.xml
echo "<Pair key="icon"><String>/dev_hdd0/game/PODCAST01/USRDIR/images/phoenix.png</String></Pair>" >>path\PODCAST%podno%\USRDIR\1entries.xml
echo "<Pair key="title"><String>#00%number% %name%</String></Pair>" >>path\PODCAST%podno%\USRDIR\1entries.xml
echo "<Pair key="info"><String> %dur% </String></Pair>" >>path\PODCAST%podno%\USRDIR\1entries.xml
echo "</Table>" >>path\PODCAST%podno%\USRDIR\1entries.xml
echo "</Attributes>" >>path\PODCAST%podno%\USRDIR\1entries.xml
echo "<Items>" >>path\PODCAST%podno%\USRDIR\1entries.xml
echo "<Query class="type:x-xmb/folder-pixmap" key="item_%number%" attr="item_%number%" src="#%id%00%number%_items"/>" >>path\PODCAST%podno%\USRDIR\1entries.xml
echo "</Items>" >>path\PODCAST%podno%\USRDIR\1entries.xml
echo "</View>" >>path\PODCAST%podno%\USRDIR\1entries.xml
pause
goto home

:gid
set /p "podno=podcast#(no spaces)  PODCAST##: "
set /p "id=ID(no spaces): "
set /p "number=item#(no spaces/# only): "
set /p "desc=Desc: "
set /p "name=Name: "
set /p "dur=Duration: "
echo "<View id="info_00%number%_item">" >>path\PODCAST%podno%\USRDIR\2info.xml
echo "<Attributes>" >>path\PODCAST%podno%\USRDIR\2info.xml
echo "<Table key="info_%number%">" >>path\PODCAST%podno%\USRDIR\2info.xml
echo "<Pair key="icon"><String>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png</String></Pair>" >>path\PODCAST%podno%\USRDIR\2info.xml	
echo "<Pair key="title"><String>%name%</String></Pair>" >>path\PODCAST%podno%\USRDIR\2info.xml
echo "<Pair key="info"><String>%desc%</String></Pair>" >>path\PODCAST%podno%\USRDIR\2info.xml
echo "</Table>" >>path\PODCAST%podno%\USRDIR\2info.xml
echo "</Attributes>" >>path\PODCAST%podno%\USRDIR\2info.xml
echo "<Items>" >>path\PODCAST%podno%\USRDIR\2info.xml
echo "<Query class="type:x-xmb/folder-pixmap" key="info_00%number%" attr="info_00%number%"/>" >>path\PODCAST%podno%\USRDIR\2info.xml
echo "</Items>" >>path\PODCAST%podno%\USRDIR\2info.xml
echo "</View>" >>path\PODCAST%podno%\USRDIR\2info.xml
goto h1

:gii
IF EXIST path\PODCAST%podno%\USRDIR\3urls.xml (
    goto gii1
) ELSE (
	goto gii0
	cls
)

:gii0
set /p "podno=podcast#(no spaces)  PODCAST##: "
set /p "id=ID(no spaces): "
echo "<View id="pspodcast00%id%_items">" >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Attributes>" >>path\PODCAST%podno%\USRDIR\3urls.xml
goto gii1

:gii1
set /p "podno=podcast#(no spaces)  PODCAST##: "
set /p "id=ID(no spaces): "
set /p "number=item#(no spaces/# only): "
echo "<Table key="item_%id%_001"> 
echo "<Pair key="icon"><String>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png</String></Pair> " >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Pair key="title"><String>   PLAY</String></Pair> " >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Pair key="info"><String></String></Pair>" >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Pair key="module_name"><String>webbrowser_plugin</String></Pair> " >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Pair key="module_action"><String>%url%</String></Pair> " >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "</Table>" >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Table key="info_00%number%_main"> " >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Pair key="icon"><String>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png</String></Pair> " >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Pair key="title"><String>   INFO</String></Pair> " >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Pair key="info"><String></String></Pair>" >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "</Table>" >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "</Attributes>" >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Items>" >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Item class="type:x-xmb/module-action" key="item_%id%_001" attr="item_%id%_001"/>" >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "<Query class="type:x-xmb/folder-pixmap" key="info_00%number%_main" attr="info_00%number%_main" src="#info_00%number%_item"/>" >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "</Items>" >>path\PODCAST%podno%\USRDIR\3urls.xml
echo "</View> " >>path\PODCAST%podno%\USRDIR\3urls.xml
goto h1

 REM Made by PhoenixARC -- posted to PSX-Place.com
 
 