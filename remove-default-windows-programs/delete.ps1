# список приложений для удаления
$apps = @(
    ##############################
    # актуально в Windows 11 24H2
    "Clipchamp.Clipchamp", # Windows 11 22H2+
    "Microsoft.BingNews", # Новости Windows 11
    "Microsoft.BingSearch", # Windows 11 24H2+
    "Microsoft.BingWeather",
    "Microsoft.GamingApp", # Xbox Windows 11
    "Microsoft.GetHelp",
    "Microsoft.MicrosoftOfficeHub",
    "Microsoft.OutlookForWindows", # Почта и календарь Windows 11 24H2+
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.MicrosoftStickyNotes",
    "Microsoft.Paint", # Paint Windows 11
    "Microsoft.PowerAutomateDesktop", # Windows 11
    "Microsoft.ScreenSketch",
    "Microsoft.Todos", # Windows 11
    "Microsoft.Windows.DevHome", #Windows 11 24H2+
    # "Microsoft.Windows.Photos",
    "Microsoft.WindowsAlarms",
    # "Microsoft.WindowsCalculator", # Калькулятор
    "Microsoft.WindowsCamera",
    "Microsoft.WindowsFeedbackHub",
    # "Microsoft.WindowsNotepad", # Блокнот Windows 11
    "Microsoft.WindowsSoundRecorder",
    # "Microsoft.WindowsTerminal", # Windows 11
    "Microsoft.Xbox.TCUI",
    "Microsoft.XboxGamingOverlay",
    "Microsoft.XboxIdentityProvider",
    "Microsoft.XboxSpeechToTextOverlay",
    "Microsoft.ZuneMusic",
    "Microsoft.YourPhone",
    "MicrosoftCorporationII.MicrosoftFamily", # Семейная безопасность Windows 11 Home 24H2+
    "MicrosoftCorporationII.QuickAssist", # Быстрая помощь Windows 11 23H2+
    # "MicrosoftWindows.Client.WebExperience", # Виджеты Windows 11
    "MSTeams", # Teams Windows 11 24H2+
    ##############################
    # неактуально в Windows 11 24H2
    "Microsoft.549981C3F5F10", # Cortana, убрали в 24H2
    "Microsoft.Getstarted", # убрали в 24H2
    "Microsoft.People", # убрали в 24H2
    "microsoft.windowscommunicationsapps", # убрали в 24H2
    "Microsoft.WindowsMaps", # убрали в 24H2
    "Microsoft.XboxGameOverlay", # убрали в 24H2
    "Microsoft.ZuneVideo", # Кино и ТВ, убрали в 24H2
    "Microsoft.Messaging",
    "Microsoft.Microsoft3DViewer",
    "Microsoft.MixedReality.Portal",
    "Microsoft.MSPaint", # Paint 3D
    "Microsoft.Office.OneNote",
    "Microsoft.OneConnect",
    "Microsoft.Print3D",
    "Microsoft.SkypeApp",
    "Microsoft.XboxApp"# Windows 10
)

foreach ($app in $apps) {
    # Удаление для текущего пользователя
    Get-AppxPackage -Name $app | Remove-AppxPackage -ErrorAction SilentlyContinue
    
    # Удаление для всех пользователей
    Get-AppxPackage -AllUsers -Name $app | Remove-AppxPackage -ErrorAction SilentlyContinue
    
    # Удаление из предустановленных пакетов
    Get-AppxProvisionedPackage -Online | Where-Object { $_.PackageName -like "*$app*" } | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
    
    Write-Host "Attempting to remove $app"
}