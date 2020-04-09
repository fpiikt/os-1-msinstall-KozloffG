# os-1-msinstall
## Создание скрипта для автоматизации установки под Windows
---
---
### `software-installer.bat`

__7-zip installer__
```shell
"7z1604-x64.msi" /passive /norestart /lwe "C:\Users\user\Desktop\7zip-log.txt" TARGETDIR="C:\Program Files\7-Zip"
```
- `/passive` - автоматический режим установки
- `/norestart` - без перезагрузки
- `/lwe` - сохранение журнала логов
- `TARGETDIR` - каталог для установки

__PaintNet installer__
```shell
"paintnet_4.2.10.exe" /auto TARGETDIR="C:\Program Files\Graphics\Paint" DESKTOPSHORTCUT=1
```
- `/auto` - автоматический режим установки
- `TARGETDIR` - каталог для установки
- `DESKTOPSHORTCUT` - создание ярлыка на рабочем столе

__Inkscape installer__
```shell
"inkscape-0.92.4-x64.msi" /qr /norestart /lw "C:\Users\user\Desktop\inkscape-log.txt" TARGETDIR="C:\Program Files\Graphics\Inkscape"
```
- `/qr` - установка с сокращенным интерфейсом
- `/norestart`- без перезагрузки
- `/lwe` - сохранение журнала логов
- `TARGETDIR` - каталог для установки

__LibreOffice install__
```shell
"LibreOffice_6.4.2_Win_x86.msi" /passive /norestart /lwe "C:\Users\user\Desktop\libreoffice-install-log.txt"
"LibreOffice_6.4.2_Win_x86_helppack_ru.msi" /quiet /forcerestart
```
- `/passive` - автоматический режим установки (отображается только ход выполнения)
- `/norestart` - без перезагрузки
- `/lwe` - сохранение журнала логов
- `/quiet` - автоматическая установка (тихая)
- `/forcerestart` - принудительная перезагрузка (можно вместо этого использовать `/promtrestart` - перезагрузка с разрешения пользователя)

__Notepad++ installer__
```shell
"npp.7.8.1.Installer.x64.exe" /S
```
- `/S` - тихая установка 
---
## Установка ПО для запуска программ на Java
### `jre_installer.bat`
```shell
mkdir "C:\Java\JRE"
echo INSTALL_SILENT=Enable> %cd%\tmp.txt
echo INSTALLDIR=C:\Java\JRE>> %cd%\tmp.txt
echo WEB_ANALYTICS=Disable>> %cd%\tmp.txt
echo WEB_JAVA=Enable>> %cd%\tmp.txt
"jre-8u241-windows-x64.exe" INSTALLCFG="\tmp.txt" /L %cd%jre-log.log
del %cd%\tmp.txt
```
- `mkdir PATH` - создание директории в PATH
- `echo > TEXT` - создание конфиг файла в текущей папке с содержимым TEXT
- `echo >> PATH` - добавление TEXT к содержимому файла
- `jre INSTALLCFG=$PATH /s /L PATH` - устанавка JRE в тихом режиме, сохраниние логов в PATH
- `%cd%` - возвращает текущую директорию
- `del PATH` - удаление файла в PATH
