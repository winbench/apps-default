@ECHO OFF
SET mysql_root=%~dp0\..
PUSHD "%mysql_root%"
START "MySQL Server" mysqld "--defaults-extra-file=%MYSQL_SERVER_OPTION_FILE%" "--log_syslog=0" "--basedir=%mysql_root%" "--datadir=%MYSQL_DATA%"
POPD