$ErrorActionPreference = 'Stop';

$version = '152.0.4191.35'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/13f9ec3a-668f-47d1-9b12-dff01c814ad1/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9756519e-1d17-4e23-810c-f97d7a27f91d/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '2FBF7AA407C753B8EA824CA077A382DBEC685155C4A17671B4A801C8370DBBF0'
  checksumType  = 'sha256'
  checksum64    = '076D64C20DA8AF33299B8C6D03C21E5BDC3EA49A35C983036345318F8D943997'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








