$ErrorActionPreference = 'Stop';

$version = '122.0.2365.52'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/27d2d650-8c29-4db0-a8df-3b9fb893454f/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ee8274dc-d886-4a13-9a71-eec7d8f59240/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '698500E93185A2A6A94E672D14FBB2011F73E8777733EA2FAC92C02E5C9286B9'
  checksumType  = 'sha256'
  checksum64    = '869AC6946273598B11792B2B4EF9839E24E9D0117E966454E238E184F30D5C1E'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








