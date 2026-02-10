$ErrorActionPreference = 'Stop';

$version = '145.0.3800.47'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c72604d0-9309-4cb1-90e5-aab594b5d39d/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/19e5c2c4-5a6d-4fe7-889b-733d4ab9eb4c/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '840B4247ABCB4E65A304F7C1D8A3A52FDF2FB09FFF2954D965CC4F81E2DCE751'
  checksumType  = 'sha256'
  checksum64    = '3AEE93ECD2E07A0E48AF97B961F524D3673C33901735EDAC56852FB517020DDF'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








