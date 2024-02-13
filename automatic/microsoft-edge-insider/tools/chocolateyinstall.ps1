$ErrorActionPreference = 'Stop';

$version = '122.0.2365.30'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e74468e0-d223-4c4a-b99c-cb5e5b4b4847/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4f145e13-8713-4646-84a9-e4dab5c79a65/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'C6647B38A6211A5B81D9C7B6ADA0F8F3F961455703492CE1694B882A2E29C9B2'
  checksumType  = 'sha256'
  checksum64    = 'AE0690ABBE55E6B698FC3363D55934A4F75C3E4BFADBCFA98651C211FE307C99'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








