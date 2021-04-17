
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/312cc844-c51b-46da-bf40-4644bdd7e5fd/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7ece9adb-5543-4122-8b46-413056d54172/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'e90d14a29b8811e1f39c1daeebd2d5aa2cd19f4c4ed9ea6857b7ef0ad4c39ead'
  checksumType  = 'sha256'
  checksum64    = '45e8d7d1b7928fae5c0d72fda7f6521255733dc3ed157dda87fb33b14f413645'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








