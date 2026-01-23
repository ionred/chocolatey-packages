$ErrorActionPreference = 'Stop';

$version = '145.0.3800.13'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d593fa28-667a-48ef-9def-bd59d88f8260/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/20b014af-c9dc-4732-a4ff-d7616c0f0679/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '1FE7B72D6DBA0F3DD4E8F2BFD4CC31D70F4416CB329186A2D1E36B2C126E722B'
  checksumType  = 'sha256'
  checksum64    = 'FD273E25EDECAFFEA1A67A8BB9FE777230303F71366762DC2D9F36EE3E945AF6'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








