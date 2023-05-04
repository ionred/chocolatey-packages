
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ff43f5d3-d373-4065-b1c2-0d15e1536034/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6752cd57-1c58-45a6-b061-909a917d8a58/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'e5cf277c37cf9a9d20d1b6b3bff82cd0b5c57c682cd566f9d6d7ab852127e54a'
  checksumType  = 'sha256'
  checksum64    = '983788bcfcc32f7cbc43faa89fa58264489ca0a70c574790746737b2f221a8f7'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








