$ErrorActionPreference = 'Stop';

$version = '155.0.4283.18'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/829997c7-cca8-4d0f-b9f3-5510831a7e18/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/38a2cf51-c33f-49cb-bdb7-b8028fce190c/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '0312407D418EE79B753700CD43764469CBEE42275E44AD0DF2EF108E0C8F4487'
  checksumType  = 'sha256'
  checksum64    = '14858A253BBBD581FA3A8603C83C65AEE0C33C71F0010F5AB93ACE6300BA6E94'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








