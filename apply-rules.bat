@echo off
setlocal EnableDelayedExpansion
chcp 65001 >nul

echo DEBUG: Script started

if "%~1"=="" (
    echo Erreur : Veuillez fournir le répertoire cible du projet
    echo Utilisation : %~nx0 ^<répertoire-cible-du-projet^>
    exit /b 1
)
set "TARGET_DIR=%~1"

if not exist "%TARGET_DIR%\" (
    echo Création du nouveau répertoire du projet : %TARGET_DIR%
    mkdir "%TARGET_DIR%"
    (
        echo # New Project
        echo.
        echo This project has been initialized with agile workflow support and auto rule generation configured from [cursor-auto-rules-agile-workflow](https://github.com/bmadcode/cursor-auto-rules-agile-workflow)
        echo.
        echo For workflow documentation, see [Workflow Rules](docs/workflow-rules.md)
    ) > "%TARGET_DIR%\README.md"
)

REM Create .cursor directory if it doesn't exist
if not exist "%TARGET_DIR%\.cursor\" (
    mkdir "%TARGET_DIR%\.cursor"
)

REM Function to copy file if it doesn't exist
:copy_if_not_exists
set "src=%~1"
set "dest=%~2"
if not exist "%dest%" (
    echo 📦 Copie du nouveau fichier : %~nx2
    copy "%src%" "%dest%" >nul
) else (
    echo ⏭️  Ignorer le fichier existant : %~nx2
)
exit /b

REM Copy all files from .cursor directory structure
echo 📦 Copie des fichiers du répertoire .cursor...
for /r ".cursor" %%F in (*) do (
    set "rel_path=%%~pF"
    set "rel_path=!rel_path:.cursor\=!"
    
    REM Create target directory if it doesn't exist
    if not exist "%TARGET_DIR%\.cursor\!rel_path!" (
        mkdir "%TARGET_DIR%\.cursor\!rel_path!"
    )
    
    REM Copy file if it doesn't exist
    call :copy_if_not_exists "%%F" "%TARGET_DIR%\.cursor\!rel_path!%%~nxF"
)

REM Create docs directory if it doesn't exist
if not exist "%TARGET_DIR%\docs\" (
    mkdir "%TARGET_DIR%\docs"
)

REM Create workflow documentation
(
    echo # Cursor Workflow Rules
    echo.
    echo This project has been updated to use the auto rule generator from [cursor-auto-rules-agile-workflow](https://github.com/bmadcode/cursor-auto-rules-agile-workflow)
    echo.
    echo ^> **Note**: This script can be safely re-run at any time to update the template rules to their latest versions^. It will not impact or overwrite any custom rules you've created^.
    echo.
    echo ## Core Features
    echo.
    echo - Automated rule generation
    echo - Standardized documentation formats
    echo - Supports all four Note Types automatically
    echo - AI behavior control and optimization
    echo - Flexible workflow integration options
    echo.
    echo ## Getting Started
    echo.
    echo 1^. Review the templates in `xnotes/`
    echo 2^. Choose your preferred workflow approach
    echo 3^. Start using the AI with confidence!
    echo.
    echo For demos and tutorials, visit: [BMad Code Videos](https://youtube^.com/bmadcode)
) > "%TARGET_DIR%\docs\workflow-rules.md"

REM Update .gitignore with xnotes and docs
if exist "%TARGET_DIR%\.gitignore" (
    findstr /L /C:".cursor/rules/_*.mdc" "%TARGET_DIR%\.gitignore" >nul
    if errorlevel 1 (
        (
            echo.
            echo # Private individual user cursor rules
            echo .cursor/rules/_*.mdc
            echo.
            echo # Documentation and templates
            echo xnotes/
            echo docs/
        ) >> "%TARGET_DIR%\.gitignore"
    )
) else (
    (
        echo # Private individual user cursor rules
        echo .cursor/rules/_*.mdc
        echo.
        echo # Documentation and templates
        echo xnotes/
        echo docs/
    ) > "%TARGET_DIR%\.gitignore"
)

REM Add sample xnotes
echo Configuration des exemples xnotes...
if not exist "%TARGET_DIR%\xnotes\" (
    mkdir "%TARGET_DIR%\xnotes"
)
xcopy "xnotes\*.*" "%TARGET_DIR%\xnotes\" /E /I /Y >nul

REM Update .cursorignore
if exist "%TARGET_DIR%\.cursorignore" (
    findstr /L /C:"xnotes/" "%TARGET_DIR%\.cursorignore" >nul
    if errorlevel 1 (
        (
            echo.
            echo # Project notes and templates
            echo xnotes/
        ) >> "%TARGET_DIR%\.cursorignore"
    )
) else (
    (
        echo # Project notes and templates
        echo xnotes/
    ) > "%TARGET_DIR%\.cursorignore"
)

REM Create or update .cursorindexingignore
if exist "%TARGET_DIR%\.cursorindexingignore" (
    findstr /L /C:".cursor/templates/" "%TARGET_DIR%\.cursorindexingignore" >nul
    if errorlevel 1 (
        (
            echo.
            echo # Templates - accessible but not indexed
            echo .cursor/templates/
        ) >> "%TARGET_DIR%\.cursorindexingignore"
    )
) else (
    (
        echo # Templates - accessible but not indexed
        echo .cursor/templates/
    ) > "%TARGET_DIR%\.cursorindexingignore"
)

echo.
echo ✨ Déploiement terminé !
echo 📁 Générateur de règles principal : %TARGET_DIR%\.cursor\rules\core-rules\rule-generating-agent.mdc
echo 📁 Exemples de sous-dossiers et règles : %TARGET_DIR%\.cursor\rules\{sub-folders}\
echo 📁 Modèles de flux de travail agile : %TARGET_DIR%\.cursor\templates\
echo 📄 Documentation du flux de travail : %TARGET_DIR%\docs\workflow-rules.md
echo 🔒 .gitignore, .cursorignore, et .cursorindexingignore mis à jour

endlocal
