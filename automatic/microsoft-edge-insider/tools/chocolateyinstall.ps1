$ErrorActionPreference = 'Stop';

$version = '149.0.4022.24'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a38799ad-818b-4069-a8c3-022543e1437b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1e8d4c16-2e48-4761-a6ca-2bd5ac83e484/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '25ED133823AA7C00A3A9DCEE5B2A189610EB5A8AC6FAD936E370339EF45707F3'
  checksumType  = 'sha256'
  checksum64    = 'C283CFC6E5A3BBAE1973F5A930D13F03B35E8313032037119A9E08C2C514DE2E'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








