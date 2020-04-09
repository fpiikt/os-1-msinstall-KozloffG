mkdir C:\Java\JRE
echo INSTALL_SILENT=Enable> %cd%\tmp.txt
echo INSTALLDIR=C:\Java\JRE>> %cd%\tmp.txt
echo WEB_ANALYTICS=Disable>> %cd%\tmp.txt
echo WEB_JAVA=Enable>> %cd%\tmp.txt
"jre-8u241-windows-x64.exe" INSTALLCFG="%cd%tmp.txt" /L %cd%\jre-log.log
del %cd%\tmp.txt