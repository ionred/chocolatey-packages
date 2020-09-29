
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/fbfbe42b-94a3-4ef8-bc8a-463941f6c206/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/d6f7ee14-ad67-4dce-829e-2b2aee3a3d04/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '10ff1dc8d03330391d4211f57962d6d8b2c786e612992fddd2ea92e25a67702b'
  checksumType  = 'sha256'
  checksum64    = '550a58001fafc98a3857310a0328d3625e5771583cc6dd6cb148effa30ae83dd'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








