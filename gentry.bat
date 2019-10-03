set /p name=<ename.txt
set /p dur=<dur.txt
set /p itemno=<itemno.txt
set /p url=<url.txt
set /p desc=<desc.txt
set /p podno=<podno.txt
set /p podid=<podid.txt
set /p podname=<podname.txt
(
echo ^<View id="%podid%_items"^>
echo ^<Attributes^>
echo ^<Table key="update_podcast_main"^>
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/update.png^</String^>^</Pair^>
echo ^<Pair key="title"^>^<String^>Update Podcast^</String^>^</Pair^>
echo ^<Pair key="info"^>^<String^>Downloads the latest podcast list.^</String^>^</Pair^>
echo ^</Table^>
echo ^<Table key="item_%itemno%"^> 
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/pspodcast.png^</String^>^</Pair^> 
echo ^<Pair key="title"^>^<String^>#%itemno% %name%^</String^>^</Pair^> 
echo ^<Pair key="info"^>^<String^>%dur% ^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
)>>path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\1entries.xml


(
echo ^<View id="%podid%00%itemno%_items"^>
echo ^<Attributes^>
echo ^<Table key="item_%itemno%_001"^> 
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png^</String^>^</Pair^> 
echo ^<Pair key="title"^>^<String^>   PLAY^</String^>^</Pair^> 
echo ^<Pair key="info"^>^<String^>^</String^>^</Pair^>
echo ^<Pair key="module_name"^>^<String^>webbrowser_plugin^</String^>^</Pair^> 
echo ^<Pair key="module_action"^>^<String^>%url%^</String^>^</Pair^> 
echo ^</Table^>
echo ^<Table key="item_%itemno%_002"^> 
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png^</String^>^</Pair^> 
echo ^<Pair key="title"^>^<String^>   DOWNLOAD^</String^>^</Pair^> 
echo ^<Pair key="info"^>^<String^>^</String^>^</Pair^>
echo ^<Pair key="module_name"^>^<String^>webbrowser_plugin^</String^>^</Pair^> 
echo ^<Pair key="module_action"^>^<String^>%url%^</String^>^</Pair^> 
echo ^</Table^>
echo ^<Table key="info_00%itemno%_main"^> 
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png^</String^>^</Pair^> 
echo ^<Pair key="title"^>^<String^>   INFO^</String^>^</Pair^> 
echo ^<Pair key="info"^>^<String^>^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
echo ^<Items^>
echo ^<Item class="type:x-xmb/module-action" key="item_%itemno%_001" attr="item_%itemno%_001"/^>
echo ^<Item class="type:x-xmb/module-action" key="item_%itemno%_002" attr="item_%itemno%_002"/^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="info_00%itemno%_main" attr="info_00%itemno%_main" src="#info_00%itemno%_item"/^>
echo ^</Items^>
echo ^</View^> 
)>>path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\3urls.xml
(
echo ^<View id="info_00%itemno%_item"^>
echo ^<Attributes^>
echo ^<Table key="info_00%itemno%"^>
echo ^<Pair key="icon"^>^<String^>/dev_hdd0/game/PODCAST%podno%/USRDIR/images/blank.png^</String^>^</Pair^>	
echo ^<Pair key="title"^>^<String^>%name%^</String^>^</Pair^>
echo ^<Pair key="info"^>^<String^> %desc% ^</String^>^</Pair^>
echo ^</Table^>
echo ^</Attributes^>
echo ^<Items^>
echo ^<Query class="type:x-xmb/folder-pixmap" key="info_00%itemno%" attr="info_00%itemno%"/^>
echo ^</Items^>
echo ^</View^>
)>>path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\2info.xml