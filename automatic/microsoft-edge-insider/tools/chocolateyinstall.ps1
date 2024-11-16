$ErrorActionPreference = 'Stop';

$version = '131.0.2903.51'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3d93e10b-2e62-47bf-98ba-52c8c03bc8c7/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e27b2c0e-fc92-4b69-914c-6d4c9ff606c7/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'AD1C6B932A321AA2637958A7A8D4DD6B1371B115908548B05738848CDD54010A'
  checksumType  = 'sha256'
  checksum64    = '4A8A3BA554FBA188C7B3D35770F8AB804B61E2CE2B3550C58BC8E105033AEDF9'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








