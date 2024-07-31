$ErrorActionPreference = 'Stop';

$version = '128.0.2739.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f7792137-5ad3-405d-90c7-495ea9abb4aa/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8e3413c1-5229-46c8-ad6a-c80f515999b9/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'AC9BCB45E862EF51E13018816276C3C8C3D471FFF3BC563713F127A6799D7445'
  checksumType  = 'sha256'
  checksum64    = 'AF8553CA9F72B6CD6BE420C6B31939B10E2EF3F044B5D5211170B92CA29EDE88'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








