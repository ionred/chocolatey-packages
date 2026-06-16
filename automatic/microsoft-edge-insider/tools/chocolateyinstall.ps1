$ErrorActionPreference = 'Stop';

$version = '150.0.4078.13'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2975aee0-6f65-4cd1-bc8a-16a67fb62121/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/17d32aea-92be-40e0-93f6-ac050274280b/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '09E933A861098466A0C3D5D5FBA665BB0974BA47CDF451691CAD51DC62457B17'
  checksumType  = 'sha256'
  checksum64    = 'AA65D53753DB9D1751B73EE94769BBA76D2F03B8CBAC4F4826FD66D6E6BC1088'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








