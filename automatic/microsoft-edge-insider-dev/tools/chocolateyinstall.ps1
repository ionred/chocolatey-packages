$ErrorActionPreference = 'Stop';

$version = '150.0.4064.2'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a359ff35-c75a-4e0a-9d14-418b684984c0/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/00508af4-c128-417e-a47c-8ab2e1f68376/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '5B67490C7DEF71ACD7AC5CD412ACBC160364FF8F2C5388E3B23B524C7DC300D7'
  checksumType  = 'sha256'
  checksum64    = '97EC17A2A26BEE5FA38709D061E08717106370093BB692EFCADAC97E8C06F483'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








