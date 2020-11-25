
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/34cf2178-7920-44a7-b4bc-72f1baeb6b2b/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9f94256d-4cb1-40e4-a1b9-1989c2f3a9e3/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '34fec6fdc9e842f176ca0bad58026ff0fefa949bdba4a7ba298fe26ee831ca09'
  checksumType  = 'sha256'
  checksum64    = 'f78b049ceafa618fe94daab6856f345a55afce7f82ee63e34e24aee12c1d2524'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








