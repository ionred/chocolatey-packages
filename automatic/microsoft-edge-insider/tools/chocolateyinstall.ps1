
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/13151ff9-91f3-49bd-88cf-ecc922074f75/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8d34cd2a-4e2e-4969-a2e7-9fe24a5e33b5/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'edded4ba934c0526b0f4a49b61b748510d90f653ec15ae74cf6432bdb5a26fe8'
  checksumType  = 'sha256'
  checksum64    = '6dbabd00138f1ebd6b1ff1ce3986d0e95367f7551bd4db3527449c762d898000'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








