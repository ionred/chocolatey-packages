$ErrorActionPreference = 'Stop';

$version = '143.0.3650.46'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ff6ba527-4062-4655-8c7c-c03d36af3d53/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ea003fc8-4687-45fd-84e3-7af51ec86443/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '509A90666F23F07909813EF8D0AAB49FFC3F13AC623CFDA8031D0C668D138A90'
  checksumType  = 'sha256'
  checksum64    = 'E292B38991E2834769B028A1F6F7611E6013707FAF1C9E1B87B2D31D92DCD2DA'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








