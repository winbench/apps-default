@ECHO OFF
ECHO.Starting MySQL Server
CALL "%~dp0mysql_start.cmd"
ECHO.
ECHO.Press any key to stop the server...
PAUSE >NUL
ECHO.
ECHO.Stopping MySQL Server
CALL "%~dp0mysql_stop.cmd"
