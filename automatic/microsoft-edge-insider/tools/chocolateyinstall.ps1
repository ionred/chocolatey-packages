$ErrorActionPreference = 'Stop';

$version = '155.0.4283.39'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d604f4c8-4ac1-4002-9505-7c58c0a50384/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fdec1c7f-46f1-4228-a8e1-2486d0992489/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '2162BE564258297790F2939B3EAEB37067067EC11BDA9FC826CB1883A731A133'
  checksumType  = 'sha256'
  checksum64    = '03308A168CABFE1F3505C38A62D653933A83991F2A953CC1A706DB5FEBC75160'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








