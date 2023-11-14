
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/57e8ba24-aeb8-4753-a1fc-56895220c68f/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9cbc8f37-eabf-4b5b-a11b-919c0626c3c1/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'f95f83adaf55235d633e71bfed3adaa0e97d7d8cbb2e8251fe866e03f07e7e03'
  checksumType  = 'sha256'
  checksum64    = '7dda56ea5707ff7846dca3a94c094ddc05e39238f81374d5e683a6fc0c3e80e0'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








