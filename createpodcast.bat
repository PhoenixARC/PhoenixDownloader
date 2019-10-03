set /p podno=<podno.txt
set /p podid=<podid.txt
set /p podname=<podname.txt
copy IMAGE\cover.png path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\images\
rename path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\images\cover.png %podname%_podcast.png
copy IMAGE\blank.png path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\images\
md path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\images
(
echo ^<XMBML version="1.0"^>
echo ^<View id="main"^>
echo ^<Attributes^>
echo ^<Table key="%podid%_main"^>
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/%podname%_podcast.png^</String^>^</Pair^>	
echo ^<Pair key="title"^>^<String^>%podname%^</String^>^</Pair^>
echo ^<Pair key="info"^>^<String^>^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
echo ^<Items^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="%podid%_main" attr="%podid%_main" src="#%podid%_items"/^>
echo ^</Items^>
echo ^</View^>
)>path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\podcast.xml