
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/9707b6e3-cd4b-46f9-826b-3eb8af2e45e2/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/7c7edd5d-89ac-4639-bc2c-f0db8bfada6a/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'ec49581e8d79901fe97ff2653674f7dcc9eebcf08196283837515bdfd0f72513'
  checksumType  = 'sha256'
  checksum64    = '01bc9d84513e80320118a9981ce209709674d101e5c34205cf44433496eb907d'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








