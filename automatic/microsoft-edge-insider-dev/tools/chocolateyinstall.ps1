
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d26ffa81-4611-43c8-a71d-de6efd921d83/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/77b19406-1d01-4f93-97a2-04ab6d6c2919/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '3e9dd0c8b43c5bf12bcb3780dcdf717b6f8ae0adb77a20222d98be2a6cefb726'
  checksumType  = 'sha256'
  checksum64    = 'e4f2c3fa32893ae44788b773d3f5f5a3b32f8bd385a26bc3852acff444ae8468'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








