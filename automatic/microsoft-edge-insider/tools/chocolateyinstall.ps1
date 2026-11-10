$ErrorActionPreference = 'Stop';

$version = '158.0.4370.12'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/43cc7c33-6331-4845-a3a7-1c07d212ae07/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cd08da2f-f7c6-4d1c-90a1-a30d1ac59359/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'CCAE3231C2EC342A62327C186DBC6ECEF0F0AD5DBB1C762608537B8EF2BE7151'
  checksumType  = 'sha256'
  checksum64    = 'DE81D78322CB30342DBC2E135DFC6F6890925358113080F313259CE8D4721F25'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








