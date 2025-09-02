::: Paths for files
set "CustomSakuraThemePath=C:\Users\Thad9\.vscode\extensions\v37r1x07.sakura-0.0.7\themes\Sakura-color-theme.json"
set "CustomSakuraThemeError=Failed to copy Custom Sakura Theme"


::: The copying
if exist "%CustomSakuraThemeError%" del "%CustomSakuraThemeError%"
copy "%CustomsakuraThemePath%" . 
if errorLevel 1 (
    echo "_Check filename for error message_" > "%CustomSakuraThemeError%"
)



