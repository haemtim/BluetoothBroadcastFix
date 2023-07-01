$hardwareID = 'YOUR_DEVICE_ID_HERE' #SET DEVICE ID
$devicefound = $true
$device = Get-PnpDevice | Where-Object { $_.HardwareID -contains $hardwareID }
while ($true) {
    while ($device.Status -ne "OK") {
	    Start-Sleep -Seconds 5 #SET SLEEP
        $device = Get-PnpDevice | Where-Object { $_.HardwareID -contains $hardwareID }
        $devicefound = $true
    }
    if ($devicefound -eq $true){
        $devicefound = $false
        Write-Output "Headphones are connected!"
        Write-Output "Restarting Nvidia Broadcast..."
        Stop-Process -Name "NVIDIA Broadcast UI" -Force
        Start-Process "C:\Program Files\NVIDIA Corporation\NVIDIA Broadcast\NVIDIA Broadcast UI.exe" #SET PATH TO BROADCAST
        Write-Output "Nvidia Broadcast restarted!"
        Write-Output "-----------------------------"
    }
    $device = Get-PnpDevice | Where-Object { $_.HardwareID -contains $hardwareID }
}
