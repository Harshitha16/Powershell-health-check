# System Health Check Script

Write-Host "Checking Disk Space..."

Get-PSDrive -PSProvider FileSystem

Write-Host "Checking CPU Usage..."

Get-Counter '\Processor(_Total)\% Processor Time'

Write-Host "Checking Running Services..."

Get-Service | Where-Object {$_.Status -eq "Running"} | Select Name, Status

Write-Host "System Health Check Completed"
