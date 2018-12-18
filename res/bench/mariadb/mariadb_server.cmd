@ECHO OFF
ECHO.Starting MariaDB Server
CALL "%~dp0mariadb_start.cmd"
ECHO.
ECHO.Press any key to stop the server...
PAUSE >NUL
ECHO.
ECHO.Stopping MariaDB Server
CALL "%~dp0mariadb_stop.cmd"
