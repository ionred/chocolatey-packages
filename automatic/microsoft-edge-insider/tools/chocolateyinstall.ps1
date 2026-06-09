$ErrorActionPreference = 'Stop';

$version = '149.0.4022.62'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9b28f141-e3d8-4a36-9196-16712c378b6f/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3b3b6c3b-d1b1-4f13-bcf5-76606cb598d7/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '0C07D4D2B838804EA4A4AD9A83699A7A40129B2CD70D972457766FBC37066064'
  checksumType  = 'sha256'
  checksum64    = '20CE6CA4B34DD41651C0FFD0758E8F0BFB3DBCF26A83141EF6ED7DE3A835BB26'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








