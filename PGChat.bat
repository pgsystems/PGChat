@echo off
color f1
title PGChat
:pre
 cls
 echo 1. Iniciar Sesion
 echo 2. Registrarse
 set /p pre=:
 if %pre%==1 goto login else goto pre
 if %pre%==2 goto log else goto pre
pause
:login
 cls
 set /p user=Nombre de usuario:
 set /p pass=Contrasena:
 if exist intern\users\banneds\%user% goto banneds
pause
:Setup
 cls
 goto siguiente
pause
:siguiente
 cls
 if exist intern\users\%user% goto siguiente1
pause
:Setup
 cls
 echo Este usuario no existe
 timeout /t 5
 goto pre
pause
:siguiente1
 cls
 if exist intern\users\%user%\pass-%pass% goto menu
pause
:Setup
 cls
 echo Contrasena incorrecta
 timeout /t 5
 goto pre
pause
:banneds
 cls
 echo Esta cuenta esta suspendida/baneada
 echo Puede pedir el desbaneo en https://forms.office.com/r/fk0e93Cx8q
 timeout /t 5
 goto pre
pause
:log
 cls
 echo Vamos a crear una cuenta
 set /p user=Nombre de usuario:
 set /p name=Nombre:
 set /p apellido1=Primer apellido:
 set /p apellido2=Segundo apellido:
 set /p pass=Contrasena:
 mkdir intern\users\%user%
 mkdir intern\users\%user%\data
 mkdir intern\users\%user%\friends
 mkdir intern\users\%user%\friends\favoritos
 mkdir intern\users\%user%\privateservers
 echo La contrasena de %user% es %pass%> intern\users\%user%\pass-%pass%.cdat
 echo %user%> intern\users\%user%\data\user.cdat
 echo %name%> intern\users\%user%\data\nombre.cdat
 echo %apellido1%> intern\users\%user%\data\apellido1.cdat
 echo %apellido2%> intern\users\%user%\data\apellido2.cdat
 echo %pass%> intern\users\%user%\data\contrasena.cdat
pause
:menu
 cls
pause