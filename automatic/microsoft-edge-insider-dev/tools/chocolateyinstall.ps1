$ErrorActionPreference = 'Stop';

$version = '132.0.2957.11'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e3f08148-9316-4955-a372-3a47838d2e49/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4a600673-d40b-449e-9697-c01ee7e34353/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '5C9C87954EE497C9B5DC24A0EE54B7AB55A3EFCAEA0F03935BCA3313DB2C2CAD'
  checksumType  = 'sha256'
  checksum64    = '2E1D2FBAD09A7F41123391C4502474874F3EF2F6525F87AA07F19D9DD0C6BC2C'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








