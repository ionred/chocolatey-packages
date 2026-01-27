$ErrorActionPreference = 'Stop';

$version = '145.0.3800.22'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3cce46b7-9e95-4ed2-9ffc-eeb222cde60b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1cdac071-abf5-4801-b9b8-f1b30eee8605/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '9DFBAD79DBD0496BA6DBFD7C6D6B1237B748EDD3AD9318714E71D531FA8C4760'
  checksumType  = 'sha256'
  checksum64    = '39C5EC59885DA8124F0C44662B8F7492E95323C7CD5973A303A572809E0197DA'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








