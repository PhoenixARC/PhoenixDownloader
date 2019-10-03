set /p podno=<podno.txt
(
more path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\1entries.xml
)>>path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\1liblist.xml
(
more path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\1entries.xml
more path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\2info.xml
more path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\3urls.xml
)>>path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\podcast.xml
(
echo ^</XMBML^>
)>>path\%podno%\dev_hdd0\game\PODCAST%podno%\USRDIR\podcast.xml