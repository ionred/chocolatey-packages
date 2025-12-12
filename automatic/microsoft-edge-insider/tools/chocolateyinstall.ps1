$ErrorActionPreference = 'Stop';

$version = '144.0.3719.11'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3b42a907-e33a-4b6b-a610-2b049976f3db/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8dc5c5cc-6358-4284-89e7-a250318ded7c/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '312DD62D4B6B400D8B72A94C17E6BB652C7DEA1E145F837B61A8814581123E39'
  checksumType  = 'sha256'
  checksum64    = '47B4B8CCBB4C69A67D718F3C1BBF3E99581D689510ABFD1371A55A59E1860A33'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








