@ECHO OFF
SET mysql_root=%~dp0\..
PUSHD "%mysql_root%"
START "MySQL Server" /MIN "%~dp0mysqld.exe" "--defaults-extra-file=%MYSQL_SERVER_OPTION_FILE%" "--basedir=%mysql_root%" "--datadir=%MYSQL_DATA%"
POPD