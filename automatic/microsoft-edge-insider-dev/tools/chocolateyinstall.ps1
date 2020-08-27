
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/e2488c9d-817a-4f9f-ad87-6a4a810f1b8b/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/758647be-f560-49da-91b7-263d39309295/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '30f05d03e49a810a714ab6c747ab37354cd41670ea21316086ff66e8f77c68a0'
  checksumType  = 'sha256'
  checksum64    = '9f45bfaeabd6b590b45a37692fa1bc3b7a863fb25ac5bcb5ae30f55ac316bc00'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








