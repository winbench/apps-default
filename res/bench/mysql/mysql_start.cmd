@ECHO OFF
SET mysql_root=%~dp0\..
PUSHD "%mysql_root%"
START "MySQL Server" mysqld --log_syslog=0 "--basedir=%mysql_root%" "--datadir=%MYSQL_DATA%"
POPD