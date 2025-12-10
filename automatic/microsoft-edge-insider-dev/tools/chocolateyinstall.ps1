$ErrorActionPreference = 'Stop';

$version = '144.0.3719.7'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/facb1422-e0c5-417f-8138-421cb49b9b12/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/bf0133d1-13b4-4246-b1a0-444b76ea33c8/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'C34256F8559B2C05005F9CBBC2F0EB51F9F1D1071FF3867380AA070A2E9ECAD8'
  checksumType  = 'sha256'
  checksum64    = '29AC69F84E57661771ED81FC7EAD16544747A507EE687C63AC46266FBC74E66F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








