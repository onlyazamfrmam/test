$url = "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-713.exe"
$outputPath = "$env:TEMP\winrar-x64-713.exe"

# Download the file
Invoke-WebRequest -Uri $url -OutFile $outputPath

# Execute the downloaded file silently
Start-Process -FilePath $outputPath -ArgumentList "/S" -Wait

# Optionally, delete the downloaded file after installation
Remove-Item -Path $outputPath -Force