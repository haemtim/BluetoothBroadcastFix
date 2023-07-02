PowerShell -windowstyle hidden -Command "Set-ExecutionPolicy Unrestricted -Force" >> "%TEMP%\StartupLog.txt" 2>&1

PowerShell -windowstyle hidden PATH\TO\bluetooth-broadcast.ps1 >> "%TEMP%\StartupLog.txt" 2>&1

PowerShell -windowstyle hidden -Command "Set-ExecutionPolicy Restricted" >> "%TEMP%\StartupLog.txt" 2>&1
