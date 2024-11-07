$ErrorActionPreference = 'Stop';

$version = '132.0.2931.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1e005aab-5426-44f3-be53-88abcf5b6d31/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3d0f2483-32a2-4179-9a61-9c6aa5621c9e/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'E9D304EBABD40509D7C1E9F8DCE39702C1ECEADB7456F95E70CC653C0721D547'
  checksumType  = 'sha256'
  checksum64    = '52DFDCCFC16ABCFF50AA57D5D948569106CA4617904BB0CE9635D3CB9EB094B6'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








