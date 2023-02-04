
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9e90b0a0-3634-41d8-a8ed-9395295cefcd/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/952dcdba-097b-4c48-9ac6-4733e385f080/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '50929c0de545834ce57bfb3fdc6820f681800c980f97aafda08af7cbc5c5c0ec'
  checksumType  = 'sha256'
  checksum64    = 'ee8c3611d41e0ad07d2becc05ac6bb9af7e93bb2e1dd8086624f7463c0599009'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








