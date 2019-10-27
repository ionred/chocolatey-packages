
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/be1fb68e-7935-4df8-93e0-5bee8045d7a6/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/084cd51a-456b-4ac1-8dc2-ab9b3c81df6f/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'f72559e0a66c6b3caa06a506b84de365d2139b3d36f9e157a48ecb47dcc6e119'
  checksumType  = 'sha256'
  checksum64    = 'e97b0c6c5dd17f260ff877f872cbb6eb7e36c435c9aef6ddf567c0d5e12eb35e'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








