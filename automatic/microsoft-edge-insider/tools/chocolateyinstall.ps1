$ErrorActionPreference = 'Stop';

$version = '128.0.2739.5'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9104a415-afd8-4b10-a1bf-46a1705b7afb/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/74d87a67-2b1b-49fb-8d31-21b88ffcf375/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '95535E83686477A5248CA7C7875575E30A6A694FDFCDD5AD457DB1DB934B14DE'
  checksumType  = 'sha256'
  checksum64    = '0EA8D4AAB05B7484C5C6847D90C821D51DF251906DED0D9E22E22C2B5988728F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








