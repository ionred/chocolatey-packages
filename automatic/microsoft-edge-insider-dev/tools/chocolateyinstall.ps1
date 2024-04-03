$ErrorActionPreference = 'Stop';

$version = '125.0.2492.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f419228f-4bd3-4ba7-a203-876540988887/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/75afe8f6-ec76-4722-aec2-7ef58ed91921/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'DE1AC0A89A14279BF1FDA1C4C803FB96C4D2387516C710F5C3AF1725E29A51E2'
  checksumType  = 'sha256'
  checksum64    = '588D492416D1B8528BC5180AE953F2A2CD65A9A6D7EF538CBE5FC53EA569542B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








