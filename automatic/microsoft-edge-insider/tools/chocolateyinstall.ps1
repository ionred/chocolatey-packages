
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4586e564-1bc5-4bfd-97c8-7ac0def65163/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/454f48e9-474f-4cf6-9720-6564b7ca8576/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'd44c3d569f45a3ef480f3421cf9f57d07c6dfb25f4809a6572e97bcf65f0bad5'
  checksumType  = 'sha256'
  checksum64    = '3bba39e3a3ecf377d77e485bf63f5a6b3e4f5c2f085094dfbd56d26a1fa0f6a4'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








