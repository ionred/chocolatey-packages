$ErrorActionPreference = 'Stop';

$version = '150.0.4078.65'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a87290ab-7d78-4630-a456-a9d9d853e547/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c86e8421-9bb0-4ac9-bd41-256e295d02db/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '4CDF9E68CF65851AF05C25317F121C10104F611B05A59813895D68E7FE62AAC0'
  checksumType  = 'sha256'
  checksum64    = '88BC21BAB4C5E5A532FE6620DBEAE320AA1C7E91FCCB6546C82D985EDC7F028A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








