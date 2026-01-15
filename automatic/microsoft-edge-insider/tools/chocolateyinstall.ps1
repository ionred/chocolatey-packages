$ErrorActionPreference = 'Stop';

$version = '144.0.3719.77'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2f86db29-4689-462d-bca6-820e765d808b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/61f42c33-5c2e-4b31-a304-e316a180e643/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '13AC456FCEB17A52987D654BA361A38B72A03B04DBC1AC467CB990D2F3E7B616'
  checksumType  = 'sha256'
  checksum64    = '1DC3112BB68ADBBC1D56C3EE8E06499E95C3095FF79F2E20C9A215E78FF1D6B1'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








