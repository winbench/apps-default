@ECHO OFF
SET mariadb_root=%~dp0\..
PUSHD "%mariadb_root%"
SET TZ=UTC
START "MariaDB Server" "%~dp0mysqld.exe" "--defaults-extra-file=%MARIADB_SERVER_OPTION_FILE%" "--basedir=%mariadb_root%" "--datadir=%MARIADB_DATA%"
POPD