
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0f52cab9-3234-465e-bb8b-ded37968c04b/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/94aaaaea-237f-421f-add5-70f6eca5b113/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '31b8d22d9fde5bf74138355c2a2df7a1a29f2d2f1edcfc5f034a03b61abbaa49'
  checksumType  = 'sha256'
  checksum64    = 'e2571c371c1b0cc033261f43827d84377598ec9d2362bb678b1c5cac98e7e5e6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








