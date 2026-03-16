$ErrorActionPreference = 'Stop';

$version = '146.0.3856.62'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/85d5d02d-d5b9-4b4a-9c16-14535c953dfc/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8c1ad235-2ad8-4fda-98e3-c6c6f7f74e69/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'B919C087BE2B79D0100AE72E160D5C7A23419BA97F3FB4AB7F2F9B7623D64FAB'
  checksumType  = 'sha256'
  checksum64    = '162B4A9E947F221A8CA38DC4BAE39C3FD1828242AC739ED4CBDE5B1870AE85BA'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








