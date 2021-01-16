
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c6abb420-89a7-4d51-ba6a-49e08fa213b7/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2063df2a-83ae-457e-9fce-840e5baea447/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '7a7dd7ac844c7ac4f9278fa59a5f6f4212f4cdb80f179035d44dd3f2438c761e'
  checksumType  = 'sha256'
  checksum64    = 'a92d9d3ade2e09adb7bd08715fcfedfe7181f7eeb1ce7ef6d1de8293ba2e84bb'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








