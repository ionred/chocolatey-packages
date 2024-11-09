$ErrorActionPreference = 'Stop';

$version = '131.0.2903.36'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/21bbd0cb-87ff-4208-b79f-f39fa74e3ab5/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1a1c14bc-00f2-49e4-9ccd-d2799e255b8e/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'D5A3C75F1FF38334E95528D29519767EB27DDF94A42F627CB582C038DFC1E251'
  checksumType  = 'sha256'
  checksum64    = '8C38AC6CEC3F0ADBC783E86DD6FC9CEAE6BFD15DAEEF7BB232BA556DDC20FA91'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








