$ErrorActionPreference = 'Stop';

$version = '126.0.2578.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/96401178-a223-4579-bd63-15ae652459d0/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7f7b3666-2fc1-438b-b4a0-31521b6efd88/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '3D87D08476A2AAE7DAB860C1071EF06E93DDC4DCB582CDE280F2BD328EC48D13'
  checksumType  = 'sha256'
  checksum64    = 'C4C781F5AB8F3E75AFEACA7CC5BCEBCC04412BEBA68CC71D007CFC64C56889F5'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








