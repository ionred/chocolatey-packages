
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/8edf65cc-c524-4efc-91e7-343a82e8f0bd/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/0bcfdaa8-efb2-4769-af73-6c83584ba3f8/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '906072f828e7d2665405fdbaa22edb350cc4427c1fea2dd20cbb6fdec692af19'
  checksumType  = 'sha256'
  checksum64    = 'df5b0fe8f6f551c6b6b63ead2ae01f6b1a048aa10745d9c936d718fd43e284be'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








