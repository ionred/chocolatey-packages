
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8c789175-b243-43cf-8f15-32a1473f2731/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1053b4a8-d99c-423c-ab38-b4dc7237c90b/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '0b60a464ab5a412e0120aef0acb8b9ec44aed7b787dc9ed834d64d451846b4b5'
  checksumType  = 'sha256'
  checksum64    = 'a3b4e094f4ca08831d3aa04b707d5dd25fc81187a30d4f7fc38f92f2b152f0dc'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








