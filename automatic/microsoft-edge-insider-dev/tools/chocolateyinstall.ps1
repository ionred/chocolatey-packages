
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/e01d6190-ca13-4bab-92af-b8d1a16d2d00/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/ec487dfa-a861-4393-ae11-0bed1c89ff1c/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '2b5a6d87a9a237c553dc9fcf0d28c551c1a85f42e8d986aebb2fafd46bc39e04'
  checksumType  = 'sha256'
  checksum64    = 'd4dc28b1e4a8ca233ad77fdd7f8c524bfa0f6dd95f1b61be781ce6e502cb7970'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








