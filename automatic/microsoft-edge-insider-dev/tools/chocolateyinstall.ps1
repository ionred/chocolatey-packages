$ErrorActionPreference = 'Stop';

$version = '146.0.3829.2'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9ca8f926-ead6-474e-b928-1f52f3756bb9/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/375e4886-d883-466d-a457-c787ebfe665b/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '31924F0FEE3CAFE35E1A85646AFEB6E19372021C25FB2FCB75BCFA37ECC298A4'
  checksumType  = 'sha256'
  checksum64    = 'AB334949D7506829B9C950BF31D8197D676214F704932C85B09F50D4BA06C344'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








