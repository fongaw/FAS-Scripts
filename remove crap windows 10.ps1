#    Run Powershell in administrator mode, and execute the command Set-ExecutionPolicy RemoteSigned. This allows you to run your own scripts.
#    Save the relevant script with a .ps1 extension, and execute it ./script.ps1




$appsList =  'Microsoft.3DBuilder', 
    'Microsoft.BingFinance', 
    'Microsoft.BingNews', 
    'Microsoft.BingSports', 
    'Microsoft.BingWeather', 
    'Microsoft.Getstarted', 
    'Microsoft.MicrosoftOfficeHub', 
    'Microsoft.MicrosoftSolitaireCollection', 
    'Microsoft.XboxIdentityProvider', 
    'Microsoft.XboxApp', 
    'Microsoft.Office.OneNote', 
    'Microsoft.People', 
    'Microsoft.SkypeApp', 
    #'Microsoft.Windows.Photos', I think people will use this app.
    'Microsoft.WindowsAlarms', 
    'Microsoft.WindowsCamera', 
    'microsoft.windowscommunicationsapps', 
    'Microsoft.WindowsMaps', 
    'Microsoft.WindowsPhone', 
    'Microsoft.ZuneMusic', 
    'Microsoft.ZuneVideo', 
    'Microsoft.ConnectivityStore', 
    'Microsoft.Office.Sway', 
    'Microsoft.Messaging', 
    'Microsoft.CommsPhone', 
    '9E2F88E3.Twitter', 
    'king.com.CandyCrushSodaSaga', 
    '4DF9E0F8.Netflix', 
    'Drawboard.DrawboardPDF', 
    'Microsoft.OneConnect', 
    'D52A8D61.FarmVille2CountryEscape', 
    'GAMELOFTSA.Asphalt8Airborne', 
    'Microsoft.WindowsFeedbackHub', 
    'Microsoft.MinecraftUWP', 
    'flaregamesGmbH.RoyalRevolt2', 
    'AdobeSystemsIncorporated.AdobePhotoshopExpress', 
    'ActiproSoftwareLLC.562882FEEB491', 
    'D5EA27B7.Duolingo-LearnLanguagesforFree', 
    'Facebook.Facebook', 
    '46928bounde.EclipseManager', 
    'A278AB0D.MarchofEmpires', 
    'Microsoft.Microsoft3DViewer' 
$enabledPackages =  'Microsoft.MicrosoftPowerBIForWindows', 'Microsoft.NetworkSpeedTest', 'Microsoft.MSPaint','Microsoft.RemoteDesktop','Microsoft.AppConnector' #just for reference

ForEach ($App in $AppsList){
    $PackageFullName = (Get-AppxPackage $App).PackageFullName
    $ProPackageFullName = (Get-AppxProvisionedPackage -online | where {$_.Displayname -eq $App}).PackageName
    write-host $PackageFullName
    Write-Host $ProPackageFullName
    if ($PackageFullName){
        Write-Host "Removing Package: $App"
        remove-AppxPackage -package $PackageFullName
    }
    else{
        Write-Host "Unable to find package: $App"
    }
    if ($ProPackageFullName){
        Write-Host "Removing Provisioned Package: $ProPackageFullName"
        Remove-AppxProvisionedPackage -online -packagename $ProPackageFullName
    }
    else{
        Write-Host "Unable to find provisioned package: $App"
    }
}