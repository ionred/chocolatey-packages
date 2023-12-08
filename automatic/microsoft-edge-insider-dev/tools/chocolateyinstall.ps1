
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4994fc32-5d9f-4aa6-b85e-7c321ac9eb71/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d33e6c72-d9eb-4fe1-90fa-ccd41370e5ae/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'f2cd9aabba5d794675b55db379d5c986d27ff237cab3e98f0ba76cd40a97642a'
  checksumType  = 'sha256'
  checksum64    = '4ee91a699dbdb2ad0b7c1d98e5714c6a8309d78925e7449c466b7a3a68fa8dab'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








