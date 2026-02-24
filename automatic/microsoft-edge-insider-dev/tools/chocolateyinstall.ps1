$ErrorActionPreference = 'Stop';

$version = '146.0.3856.20'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f59f0b16-33da-46c5-96a4-4e5e3e1dfe2e/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d88cbb6c-a00e-466c-8550-51d787210f53/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '3406514ED9259E1A99DEB0A6C366A3BA1081294CD0C47F34FE873D372E8BB2A3'
  checksumType  = 'sha256'
  checksum64    = 'CDA9193845C0CC6766A5234588172A2ECD824CBC89BEBF2C349959895E8D3264'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








