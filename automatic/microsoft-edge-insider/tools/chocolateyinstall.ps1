$ErrorActionPreference = 'Stop';

$version = '131.0.2903.27'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7e1d553e-8760-42b3-8e4e-bed12b566bc4/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cb57046d-d069-4c30-8223-3e185fdad72e/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '25D9E1B06337CF57E24AC44253E6BC95E8E34D8F836395552F6E6A817D0B815B'
  checksumType  = 'sha256'
  checksum64    = '7A989DA3E34E2A93F5EF0A955C55C12E1690C99A1E0EA819E77AD7709894F25E'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








