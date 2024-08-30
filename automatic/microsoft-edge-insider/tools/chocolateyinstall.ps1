$ErrorActionPreference = 'Stop';

$version = '129.0.2792.12'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5b60dce2-08de-4b8f-9a43-d218d9c2f48b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b7b01c23-1d8d-4c7f-b817-bdebaa57b8b7/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '5271DA9DBC03150B9DB9056137D6FC5001E2E25CFD257663312A2FC9C25270A1'
  checksumType  = 'sha256'
  checksum64    = '2708856B000D552C60DE428C07A01E4BF638D05C328874A25989D987AB3DDC70'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








