
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4bf7a5fe-6bdc-45a0-9be3-e931c48804ab/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c98c7e7d-f5bc-4738-9709-f5444d6256a3/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'fca6ebcdb57de61f1e95c2293cc0a2ce930a2dfd67157310c2a2279d04566ff6'
  checksumType  = 'sha256'
  checksum64    = '7867331ac5843b30a602203b228337d8ca0c2ab7a11030fda1c4f7f4f8204177'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








