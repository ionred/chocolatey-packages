$ErrorActionPreference = 'Stop';

$version = '147.0.3912.51'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/999e44d4-cc2c-496d-ac8e-0e1fcdfe722a/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ca2850dc-bab2-4c79-9f85-1c69fd2e53fc/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '5F643968BE54855F1FFB8722C69E6C98D5171E1E4242709D068FE3A098385886'
  checksumType  = 'sha256'
  checksum64    = 'A794A4C401A07B89ED2AAA1AC05343168B077DED2815BCE79911F03CF9374E44'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








