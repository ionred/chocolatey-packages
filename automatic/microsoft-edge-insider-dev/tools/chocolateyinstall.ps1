
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/a4e3e420-e21d-43a8-9c28-7f404e3c7d2d/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/fb611146-360a-4eca-9578-bdf7bef5bf29/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'd4b9b24a261dd1a70019b1eb852cc37a0a2264014c3c4e72fbf68574890ce01a'
  checksumType  = 'sha256'
  checksum64    = '8af58e24968592ccb9fb1797eb1b6ae7ea2476237bb8a5b4d328b296dd9069b3'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








