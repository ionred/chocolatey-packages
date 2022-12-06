
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/15e9531b-176c-4840-8a4c-1396c495f398/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/629447e4-f4e4-4ab9-8620-aebbde0da5ea/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '9fc68c106c51e87bcc3c3d5436fc3aca0a4050ce958a610ac8ddd7e470156732'
  checksumType  = 'sha256'
  checksum64    = 'ee8948e9d5f6d733c544337861e1a744e86285e58ac3d1c7f48a59d3bbc41ee6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








