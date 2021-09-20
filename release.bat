@echo off
title SCP Database - Version 0_1 Alpha
color 0c

set scps = 300
echo.
echo.
echo Bienvenido a la base de datos SCP. Porfavor, ingrese su clave autorizada a continuacion...
set/p clave="> "

cls
echo Comprobando.
ping -n 2 localhost > logs
cls
echo Comprobando .
ping -n 2 localhost > logs
cls
echo Comprobando  .
ping -n 2 localhost > logs
cls
echo Comprobando.
ping -n 2 localhost > logs
cls
echo Comprobando .
ping -n 2 localhost > logs
cls
echo Comprobando  .
ping -n 5 localhost > logs

cls

:inicio
echo.
echo Bienvenido, usuario %clave%. Ingrese el numero de la accion a realizar...
set/p que="1)BUSCAR 2)AGREGAR 3)BORRAR> "

if %que%==1 goto search
if %que%==2 goto add
if %que%==3 goto delete

echo Funcion no encontrada.
pause
cls 
goto inicio

:search 
echo Que SCP desea buscar:
echo Para ver la lista de SCPs disponibles ingrese "list"
set/p scp="SCP-"

if %scp%==list goto list

if %scp%==000 goto 000
if %scp%==001 goto 001
if %scp%==002 goto 002
if %scp%==003 goto 003

echo Ese SCP no existe... Presione una tecla para volver a intentarlo.
pause>nul 
cls
goto search

:list 
cls 
echo Descargando "list.bin" [--------------------------------------------------] 0/50%
ping -n 3 localhost > logs
cls 
echo Descargando "list.bin" [=====---------------------------------------------] 5/50%
ping -n 3 localhost > logs
cls 
echo Descargando "list.bin" [==========----------------------------------------] 10/50%
ping -n 3 localhost > logs
cls 
echo Descargando "list.bin" [==============================--------------------] 30/50%
ping -n 3 localhost > logs
cls 
echo Descargando "list.bin" [==================================================] 50/50%
ping -n 3 localhost > logs
cls 
echo Descargando "list.bin" [COMPLETO]
ping -n 3 localhost > logs
cls 
cd data 
type list.txt
cd..
pause
cls
echo Borrando "list.bin" [--------------------------------------------------] 0/50%
ping -n 4 localhost > logs 
echo Borrando "list.bin" [==================================================] 50/50%
ping -n 2 localhost > logs
echo Borrando "list.bin" [COMPLETO]
pause 
cls
goto search



:000
cls
echo Item: SCP-000
echo.
echo Clasificacion del objeto: undefined
echo.
echo Procedimientos de contencion: undefined.Function(CONTENCION):Error, El archivo PROCEDIMIENTOS_DE_CONTENCION no existe.
echo.
echo Descripcion: Error critico del sistema: Archivo no encontrado. Porfavor contacta al administrador del sistema.
echo. 
pause
cls
goto inicio

:001 
cls 
echo Item: SCP-001
echo. 
echo Clasificacion del objeto: Permisos insuficientes.
echo.
echo Procedimientos de contencion: Permisos insuficientes. 
echo. 
echo Descripcion: Permisos insuficientes.
echo.
pause 
cls 
goto inicio 

:002 
cls 
echo Item: SCP-002
echo. 
echo Clasificacion del objeto: Keter
echo. 
echo Procedimientos de contencion: Todos los ejemplares de SCP-002 deben estar almacenados en una camara [+]
echo de 5m x 5m x 5m, rodeada a su vez de una boveda sellada al vacio. La entrada a la camara del SCP esta [+]
echo controlada por una esclusa recubierta de plomo para asegurar un aislamiento de sonido absoluto. Seguido [+]
echo de dos capas de aislantes acusticos especializados para el rango de frecuencias del SCP-002.
echo. 
echo Con el fin de preservar a SCP-ES-002, se emitirán veinte (20) minutos de música seleccionada cuidadosamente [+]
echo para este propósito, cuyo tempo no sea mayor a andante (máx. 108 BPM) y a no más de 60 dB, cada seis (6) horas, [+] 
echo a través de un sistema periférico autónomo.
echo.
echo Descripcion: SCP-ES-002 es una forma de vida observada como meramente acústica. Posee un nivel moderado de consciencia, y [+] 
echo a sido tentativamente clasificada como Rivulis tremulae. SCP-ES-002 se conforma principalmente de ondas que oscilan en frecuencias [+] 
echo entre 14 y 18 kHz, las cuales pueden ser captadas por cualquier organismo provisto de oídos capaces de escuchar en este rango, o por equipos electrónicos. [+] 
echo Cualquier acción realizada por SCP-ES-002 generará un pitido agudo de diente de sierra, generalmente durante su movimiento. [+] 
echo SCP-ES-002 parece existir como una onda sonora aislada, presentando varias de las características físicas de ondas acústicas comunes.
echo. 
pause 
cls 
goto inicio 


:003

:add 
cls
echo Conectando a -MAIN_SERVER-...
ping -n 2 localhost > null
echo Hecho!
ping -n 2 localhost > null
cls
echo Que SCP desea agregar...
set/p addScp="SCP-"
echo Solicitud para agregar SCP-%addSCP% ha sido enviada correctamente. Vuelva en la proxima actualizacion.
pause
cls
goto inicio 

:delete 
cls
echo Conectando a -MAIN_SERVER-...
ping -n 2 localhost > null
echo Hecho!
ping -n 2 localhost > null
cls
echo Que SCP desea quitar...
set/p delScp="SCP-"
echo Solicitud para quitar SCP-%delSCP% ha sido enviada correctamente. Vuelva en la proxima actualizacion.
pause
cls
goto inicio 




