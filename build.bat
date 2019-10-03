set /p podno=<podno.txt
set CID=PODCST-INSTALLER_90-0000000000000000
set PKG_DIR=./path/%podno%/
set PKG_NAME=PODCAST%podno%.pkg

make_package_custom.exe --contentid %CID% %PKG_DIR% %PKG_NAME%