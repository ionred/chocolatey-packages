$ErrorActionPreference = 'Stop';

$version = '149.0.4022.8'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/17a100c2-75a0-4e7e-b306-c9b4cb4cbe9f/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/46688815-52bf-4ec8-baa6-1df89010dab7/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '8AD6E149611A69DAA3D8B7966BAD3F3E1ECEA0295B367BC3011E060BBC0AE4B2'
  checksumType  = 'sha256'
  checksum64    = 'DB4F6099658B9FBB9B32467BA0427DC972DD65427D081E492048982AF03E329B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








