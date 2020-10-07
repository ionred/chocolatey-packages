
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/673f7bfa-4a38-42db-8143-766d48a5a9d2/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/aefb51bd-f71d-4857-9f91-9c447072b0b4/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '9a6e4bf531f10e1884ae301f7c50c56bbf5f015dfe1a9f7ca10200902c0be9fc'
  checksumType  = 'sha256'
  checksum64    = 'd76520712cf7e84d621eb069d8273a18f251cee576a71068452856d6bbd5e736'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








