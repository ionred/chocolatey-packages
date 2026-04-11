$ErrorActionPreference = 'Stop';

$version = '147.0.3912.60'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f4c25ca3-fc13-43ad-8fe9-985e3febb44b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b3386ebc-1355-4348-aa9e-30bb03d0d650/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '9239DA7B7FE571E1E925497D3CC4C18B83E6F740163C11513619A711CB835190'
  checksumType  = 'sha256'
  checksum64    = '93A415010550B7838E810B103DD12135B58A487B2D8C0A7A273F2373689F029A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








