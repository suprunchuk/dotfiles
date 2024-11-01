# Remove Default Windows Programs PowerShell Script

This PowerShell script removes pre-installed Windows 11 default apps and bloatware.

## Usage

1. Open PowerShell as Administrator
2. Navigate to script directory
3. Run: `.\delete.ps1`

The script uses a foreach loop to iterate through a list of apps ($apps) and removes them using the following steps:

1. Removes the app for current user using `Get-AppxPackage` and `Remove-AppxPackage`
2. Removes the app for all users using `Get-AppxPackage -AllUsers`
3. Removes the app from provisioned packages (pre-installed) using `Get-AppxProvisionedPackage`

The script will attempt to remove these apps:
- Clipchamp
- Bing News/Search/Weather
- Xbox related apps
- Microsoft Office Hub
- Outlook
- Solitaire Collection
- Sticky Notes
- Paint
- Power Automate Desktop
- Screen Sketch
- To Do
- Dev Home
- Windows Camera/Alarms/Sound Recorder
- Your Phone
- Microsoft Family
- Quick Assist
- Teams
  And other pre-installed apps

Each removal attempt is logged with "Attempting to remove [app name]"

`Note:` The `-ErrorAction SilentlyContinue` parameter ensures the script continues even if an app is not found or cannot be removed.

Use at your own risk. Make sure you want to remove these apps before running the script.
