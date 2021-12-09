
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8478aec4-24b3-49f9-b5f8-a67182b26db7/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c0248748-60fa-4e22-9c76-b357ed092533/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'ea1261951920db602358d6ed2e46fcd4ea2d790f455bf44ecea926dc9e5f809e'
  checksumType  = 'sha256'
  checksum64    = 'd9fc77353d629d96dc7e09e7d554882ef20049c061b90c181a4e4cc7a58a1349'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








