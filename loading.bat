@ECHO OFF
Timeout 2 >null
SETLOCAL ENABLEDELAYEDEXPANSION
FOR /F %%A in ('"PROMPT $H&FOR %%B in (1) DO REM"') DO SET "BS=%%A"

CALL :TYPE "Welcome To 2zla Executor"
ECHO/
timeout 2 >null
CALL :TYPE "Loading..."
timeout 3 >null
ECHO/
goto qoipgnoiq
EXIT /B

:TYPE
SET "d[text]=%~1"
CALL :TYPELOOP
GOTO :EOF

:TYPELOOP
IF "%d[text]:~0,1%" == "#" (
    <NUL SET /P "=^!"
) else (
    <NUL SET /P "=d!BS!%d[text]:~0,1%"
)
SET "d[text]=%d[text]:~1%"
IF "%d[text]%" == "" (
    GOTO :EOF
) else (
    FOR /L %%J in (1, 12, 1000000) DO REM
    GOTO :TYPELOOP
)


:qoipgnoiq
cls
ECHO Done.
pause