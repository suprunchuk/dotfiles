# Winget: Quick Installation of Your Software Suite on a Clean System

## Overview
Winget provides powerful `export` and `import` commands for managing application installations across systems.

## Basic Commands

### Export Applications
To save a JSON list of installed applications in the current folder:

```powershell
winget export -o setup_winget.json
```

### Import Applications
To install applications from the list on a clean system:

```powershell
winget import C:\temp\setup_winget.json --ignore-unavailable --accept-package-agreements --accept-source-agreements
```

## Important Considerations

### Repository Coverage
- Only applications available in connected repositories will be included
- Default repositories: `winget` and `msstore` (Windows Store)
- Microsoft Store packages can be added to JSON by using their ID in the URL: https://apps.microsoft.com/store/detail/{package-id}

### Managing the Export File
- You can edit the JSON file to remove unnecessary applications
- Winget attempts to update applications to newer versions when available

### Adding New Applications
1. Find application IDs using search:

```powershell
winget search <application-name>
```

2. Add IDs to the appropriate repository section in the JSON file

### System Image Applications
- Applications installed from system images won't be included in the export
- These must be identified manually using `winget search`
- Not all system applications are available in the store repository

## Summary
The import/export functionality efficiently streamlines setting up a new system with your preferred applications. While it doesn't cover all software or application settings, it significantly simplifies the process of installing multiple applications with a single command.