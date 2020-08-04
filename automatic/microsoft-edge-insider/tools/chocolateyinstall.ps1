
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/02bd7d3f-98c5-400e-bf76-a3d0cd8aa183/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/df7a65f2-8b8b-4258-9457-6e7c78c96d9f/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'b9a54d6c32769ecef151f60e33adab583a1207bfd238072d398abb54782d2b1e'
  checksumType  = 'sha256'
  checksum64    = 'a81df48068aef1c369e7ad4f450677aee5b8219fdc322533c0ff9d3a29aee516'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








