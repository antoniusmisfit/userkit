@echo off
rem Userkit manages user accounts and user login sessions
if "%1"=="adduser" goto AddUser
if "%1"=="rmuser" goto RmUser
if "%1"=="login" goto Login
if "%1"=="users" goto ListUsers

:ListUsers
rem Lists regular users on the system
dir /l /b c:\users
goto END

:AddUser
rem Add a user to the system
mkdir c:\users
mkdir c:\users\%2
echo. > c:\users\%2\user.id
echo @echo off > c:\users\%2\userexec.bat
echo prompt $l%2@$p$g >> c:\users\%2\userexec.bat
echo set user=%2 >> c:\users\%2\userexec.bat
echo set home=c:\users\%2 >> c:\users\%2\userexec.bat
echo User %2 has been created.
goto END
:RmUser
rem Remove a user from the system
if not exist c:\users\%2\user.id goto END
deltree /y c:\users\%2
END
:Login
rem User login to the system
set /p user=User:
if not exist c:\users\%user%\user.id goto Login
cd c:\users\%user%
call c:\users\%user%\userexec.bat
goto END
:END
