
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/92d44d31-53f2-4f98-abf7-b3b86b1cdfb8/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/86c1badd-7912-42dd-9db2-83170c83040c/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'e70920c7f5d6f2286f45211b921a3cbb9edae0ab3c3fe1ab2f1d67af8be2d741'
  checksumType  = 'sha256'
  checksum64    = '4786a6a14e849374ced8c84a1d55bc88e2ea0d903b286949fd91dd1a3af63f01'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








