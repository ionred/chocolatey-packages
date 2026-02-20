$ErrorActionPreference = 'Stop';

$version = '146.0.3856.13'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/306748a9-9aab-41a0-98b0-c08b73c71dd0/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/82aad85b-5a4d-454f-9e28-bac24d248ab0/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '1A49E9BE225CE7D8BD4F4837C2A7678C8FA5E05D94796AA41F7790A6A6F7BF03'
  checksumType  = 'sha256'
  checksum64    = '2A46BA974CE9A0D2B9235A438832B82CDC0D40B6836AFD1C2477B20EEA0C278A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








