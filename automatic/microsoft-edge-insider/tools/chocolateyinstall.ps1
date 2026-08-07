$ErrorActionPreference = 'Stop';

$version = '152.0.4191.10'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5852ff8b-6bff-4801-aa7b-468f0971a0cc/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/772f3389-8c0a-4bfe-8329-21f1b1f44ab5/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '582F3D8CA9DA2D7C02F5F88ED208500F2B4490CD33C3E63A5934B34E1D11058B'
  checksumType  = 'sha256'
  checksum64    = '3CF0A0EFBCE02AEE47BE88BB5D768FC27F411DB63630F9FC954747D3099B4E30'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








