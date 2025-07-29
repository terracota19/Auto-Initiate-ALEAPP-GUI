@echo off
set "ALEAPP_DIR=."
cd /d "%ALEAPP_DIR%"

IF %ERRORLEVEL% NEQ 0 (
    echo Error: No se pudo cambiar al directorio de ALEAPP.
    echo Asegúrate de que este archivo .bat esté en la misma carpeta que aleappGUI.py.
    pause
    exit /b %ERRORLEVEL%
)

echo Verificando e instalando dependencias de Python...
pip install -r requirements.txt

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Fallo al instalar las dependencias de Python.
    echo Asegúrate de que Python y pip esten correctamente instalados y en tu PATH.
    echo Intenta ejecutar este script como administrador si tienes problemas de permisos.
    pause
    exit /b %ERRORLEVEL%
)
echo Dependencias instaladas/verificadas correctamente.
echo.

echo Lanzando ALEAPP GUI...
python aleappGUI.py

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: No se pudo ejecutar ALEAPP GUI.
    echo Asegurate de que Python este en tu PATH y todas las dependencias esten correctamente instaladas.
    pause
)

pause