$ErrorActionPreference = 'Stop';

$version = '129.0.2766.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2f5d6ad4-916f-4bfd-9e81-7f2dc6d02eb2/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f22d33d1-45ca-4f79-88d7-56c90e14c167/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'F2B981D3DE4D522379655E15133378D6659F636B31204AABBDC4BAD230C18D90'
  checksumType  = 'sha256'
  checksum64    = '66E5D94BEBE8ED015C0632197F09F3FFD2D5430999B6BE565B07A73FF1D00654'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








