::: Paths for files
set "CustomSakuraThemePath=C:\Users\Thad9\.vscode\extensions\v37r1x07.sakura-0.0.7\themes\Sakura-color-theme.json"
set "CustomSakuraThemeError=Failed to copy Custom Sakura Theme"

set "KeybindsPath=C:\Users\Thad9\AppData\Roaming\Code\User\keybindings.json"
set "KeybindsError=Failed to copy the keybindings.json"

set "userSettingsPath=C:\Users\Thad9\AppData\Roaming\Code\User\settings.json"
set "userSettingsError=Failed to copy settings.json"


::: The copying
if exist "%CustomSakuraThemeError%" del "%CustomSakuraThemeError%"
copy "%CustomsakuraThemePath%" . 
if errorLevel 1 (
    echo "_Check filename for error message_" > "%CustomSakuraThemeError%"
)


if exist "%KeybindsError%" del "%KeybindsError%"
copy "%KeybindsPath%" . 
if errorLevel 1 (
    echo "_Check filename for error message_" > "%KeybindsError%"
)

if exist "%userSettingsError%" del "%userSettingsError%"
copy "%userSettingsPath%" . 
if errorLevel 1 (
    echo "_Check filename for error message_" > "%userSettingsError%"
)

