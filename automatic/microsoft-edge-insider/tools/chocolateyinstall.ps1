
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/20ae9eab-ebc8-4d55-88e9-be09315ae8b2/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4b5dc1e7-50d8-4bca-bbb6-68c0c03e002e/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '519d5d223e1f9d262b06a361fd1178bbbbb4eaa695331eb386f5f49f0acf1718'
  checksumType  = 'sha256'
  checksum64    = 'b08c74e22110af97b73ce1679a7b46744328ee3128d32ea2a28a5646ffa1317d'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








