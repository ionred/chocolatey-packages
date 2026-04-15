$ErrorActionPreference = 'Stop';

$version = '148.0.3967.8'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fbec9019-a341-4d4d-96de-1eb5c5591b5e/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7443dd0b-2dc8-46d9-9ae9-c452f605af96/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '367555F5E52EC89C71BF659D5DD895E0B4BA5404B13F1DE030E70709E51722A4'
  checksumType  = 'sha256'
  checksum64    = '85BFA12109E38B27DCABD2DEE3DFC6DF021E8EC9A9CB01B6ED246969ECC9FEAC'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








