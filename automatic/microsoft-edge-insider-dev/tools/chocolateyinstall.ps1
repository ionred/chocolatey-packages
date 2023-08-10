
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d1d7c564-d29e-4ed9-ae02-3630ea0fdbe7/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4fc13f4f-48ef-412b-a7bd-c7a03e03fa83/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'a07e93c2a990e06f2233e56fb1aa644a1f699400dd11af727c1d977dbdf47149'
  checksumType  = 'sha256'
  checksum64    = 'e1a25b65d1f389972e9a488caa6dce2a2acbd60295f84d101b4ea813ab5fc61a'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








