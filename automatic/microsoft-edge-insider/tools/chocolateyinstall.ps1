
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/04abd2aa-ba8a-4127-ad5e-ab2a5b6a6da7/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ff579dcf-ce3c-4ff8-beb9-4ac16f875085/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '58ea9701c2bff94d38d16adb3a60e149e2b40a754c6e22abc8e12e25838816ed'
  checksumType  = 'sha256'
  checksum64    = 'e0a10b758985b4b8bca0951b56b22bfb13961b3a95157052594f8ed9ec6e7d2b'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








