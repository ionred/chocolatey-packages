
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/366a5377-9f8b-482c-9cee-d38a8e826f5b/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4f4dd8ab-0f23-4206-b938-7a21dd49bb3a/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '95833e443f02570575995c91bb85ae287eb753fefddb0d089e4a124d07354ba1'
  checksumType  = 'sha256'
  checksum64    = '2b74400ae40de23c6aed300cffd07401056410077519eaaecb1439620979a6c1'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








