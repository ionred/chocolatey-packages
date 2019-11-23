
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/1ade8600-ca5a-4b25-9323-dd172eec3495/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/cfa5e419-60b5-4b2b-ae38-e72c7d2aaf7c/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '9c028744bfabaae6ce5bf6b09c657af2e2e9921fbb55e9c5cc236d0c3fa73684'
  checksumType  = 'sha256'
  checksum64    = '324f885969b4ee23dcf222a934b8d11f9d935338e242071f89d884a817d58c19'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








