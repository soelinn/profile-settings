# profile-settings
This repository stores files useful for easily setting up the User Profile exactly like how I want on a Windows machine.

## How to "install" `Generate-MachineKey.ps1`
Save this file in the same directory as the PowerShell `$profile` so it is easier to find.
You can modify the `Microsoft.PowerShell_profile.ps1` file to automatically include this file at profile initialization like below.

example:

```
# copy and paste the line below into your PowerShell $profile file soGenerate-MachineKey command is available
. (Join-Path (Split-Path "$profile") "Generate-MachineKey.ps1")
```

## How to "install" `Microsoft.PowerShell_profile.ps1`
1. Open PowerShell, and execute `Write-Host $profile`.  
2. Copy and paste this `Microsoft.PowerShell_profile.ps1` file to the path printed by the above command.

**Example Output:**  
```
C:\Users\stun> Write-Host $profile
C:\Users\stun\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
/\
||
this is the full file path you should copy to
```

## How to "install" `OpenPowerShellHere.reg`
This file is a Windows Registry file. To install it, you simply right-click on it and click `Merge`.  This allows you to open a PowerShell window from Windows Explorer's context menu.
