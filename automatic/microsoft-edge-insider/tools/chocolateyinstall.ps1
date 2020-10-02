
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/f17b8631-6ae6-42b1-ada7-108766bb2dd0/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/a1a137af-c118-4bbf-8f68-62f83b87c5fd/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'ece95980e64632b58f0ffde298597a113048bab562c1bd5687ffa2fc9425bc9b'
  checksumType  = 'sha256'
  checksum64    = 'dc6bd9febb2c32caf94be0758356470cce848dc26e472e53fd77f27096fd30dc'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








