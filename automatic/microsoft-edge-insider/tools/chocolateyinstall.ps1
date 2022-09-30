
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/24219698-0283-48cf-b7a0-afa9adc5cb5b/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/10461c2f-b9b5-4db2-8058-35e0b646b338/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '4ef9e7e9dd4645e62abd5eed1a173c36126bf1fd533fa743f318659e44eea084'
  checksumType  = 'sha256'
  checksum64    = 'd04706cc095021f7d4ecb8e579ca28b8edb02d057c3c635cf5f3a8b7aaf7d50c'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








