
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/47e83297-3415-423e-8399-b10eb81b8c56/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6dd7cb5b-3dda-4036-9cd2-f2edd2c24037/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '1ce47bfaf5c1dedc2b6c1cb6f8bc3209b6354cb47124bc6caee92aebbaeabb0d'
  checksumType  = 'sha256'
  checksum64    = 'f25c3b75f3fce3e0196800ec2ea7a6c0675a6b293f116a45a32142b9bbe99807'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








