@echo off

echo Reading config values...
for /F "tokens=*" %%I in (config.ini) do set %%I


echo Setting db and log paths...
set dataPath=%dbPath%\db
set logPath=%dbPath%\logs\

echo Compiling arguments string...
set arguments=%isQuiet%
set arguments=%arguments% --port %listeningPort%
set arguments=%arguments% --logpath "%logPath%output.log"
set arguments=%arguments% %isLogAppend%
set arguments=%arguments% --logRotate %isLogRotate%
set arguments=%arguments% --%authType%
set arguments=%arguments% --dbpath "%dataPath%"
set arguments=%arguments% %seperatePathPerDB%

echo Creating db and log directories if not present...
if not exist %dataPath% ( mkdir %dataPath% )
if not exist %logPath% ( mkdir %logPath% )

echo Ready!
echo ------
echo Starting MongoDB...
echo Listening On: %listeningPort%
echo Logging To:   %logPath%output.log
echo Auth Type:    %authType%

bin\mongod.exe %arguments%