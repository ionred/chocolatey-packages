
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ebc3a04c-cff9-48e1-97ec-025b0e9266f8/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1e7db4eb-d1d7-4e27-99d1-04aa078c9a75/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'fa9e6c43cc13dde78015c6dc122716a3e69fc470025e69ee4c1e4a8aebaa8057'
  checksumType  = 'sha256'
  checksum64    = '8c15bfa44606d5ceb0cb598f9a9182ef2510053f8add6ff7d3631d364b4b6f80'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








