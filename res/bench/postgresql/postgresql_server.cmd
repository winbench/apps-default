@ECHO OFF
ECHO.Starting PostgreSQL Server
CALL "%~dp0postgresql_start.cmd"
ECHO.
ECHO.Press any key to stop the server...
PAUSE >NUL
ECHO.
ECHO.Stopping PostgreSQL Server
CALL "%~dp0postgresql_stop.cmd"
