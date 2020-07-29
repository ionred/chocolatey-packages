
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/d5ec80c0-bcef-4200-b3ea-604f6d0e543f/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/664cd93a-5c3e-4907-a3fb-f17c31e30b14/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'c59a55b1476e38f155f6680a4dd14f7e5ab3c01800bbd4e0a0b11e1c17dccfd4'
  checksumType  = 'sha256'
  checksum64    = 'cf2b35f8b5b7d5dee290694e91c489afaab953b61c9d9fc8e20bab86da29c196'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








