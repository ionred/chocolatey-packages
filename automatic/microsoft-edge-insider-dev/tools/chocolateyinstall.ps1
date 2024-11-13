$ErrorActionPreference = 'Stop';

$version = '132.0.2945.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a72ff1d3-9195-4b73-a31e-427e00f7728a/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f0aeef7d-e209-41aa-8a3e-bde09b24ccf1/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '1DCBE16490C4BEDF51D41C2AA15C911ED18AABD3CE119A15C37784569A6C83C3'
  checksumType  = 'sha256'
  checksum64    = '9851DE998AB7BF83FAE073AF21664A39D14533D0BD4C432BD0DFB193104EDD9A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








