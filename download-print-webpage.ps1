# CHANGEME - this should be the url you want to download and print
$url = "https://www.google.com"

# CHANGEME - This will be where on your computer you want to save the file
$outputFolder = "C:\Users\young"

$timestamp = Get-Date -Format "yyyyMMdd_HH:mm"

# CHANGEME - replace "webpage" with what you would like to call the output file
$outputFile = Join-Path -Path $outputFolder -ChildPath "Webpage_$timestamp.pdf"

# $url = Read-Host "Please enter the URL of the webpage you would like to download:"
# $userProfile = Read-Host "Please enter the name of your user folder."
# $outputFolder = "C:\Users\"+$userProfile
# $outputFilename  = Read-Host "Please enter what you would like to call the output file:"
# $outputFile = Join-Path -Path $outputFolder -ChildPath "$outputFilename/_$timestamp.pdf"

# Define the path to the Chrome executable
$chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"

# Run Chrome in headless mode to save the webpage as PDF
$arguments = "--headless --disable-gpu --print-to-pdf=$outputFile $url"
Start-Process -FilePath $chromePath -ArgumentList $arguments -NoNewWindow -Wait

# Confirm completion
Write-Output "The webpage has been saved as $outputFile"

# CHANGEME - Make sure to update the path to where you are saving your file and the name of the printer you want to use to print.
Get-Content -Path "$outputFolder\Webpage_$timestamp.pdf" | Out-Printer -Name "PrinterName" 

Write-Output "The webpage has been sent to the printer."
