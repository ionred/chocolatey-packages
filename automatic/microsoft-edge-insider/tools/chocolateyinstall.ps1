$ErrorActionPreference = 'Stop';

$version = '153.0.4234.19'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/90f8a328-1062-4e43-82f9-204305d1f76c/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/41b06bf6-e1b0-462f-95b4-e68f3ca516b9/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'C4502A8EF910F7CC869F8F957D3D41D189527893DAEF42CE42976A1F9160B792'
  checksumType  = 'sha256'
  checksum64    = '41D4E2A736BC18C5529DB9DED40B16720C93A1722AFFFBDCE3BBAC08C92D75F8'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








