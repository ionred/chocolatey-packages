$ErrorActionPreference = 'Stop';

$version = '143.0.3650.3'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3920a24b-795b-4cd1-ab07-bb81441862ec/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d57773b8-7c09-4d0b-a69b-769bf046c73e/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '6E113CD6EC4F214914E6A0425D8310C589864C00EDEDE957830B4BC0D1B09E39'
  checksumType  = 'sha256'
  checksum64    = '348412CFFFC43BC669A519573219FA89CA144628AD80A9A75ACA0B72099B83B7'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








