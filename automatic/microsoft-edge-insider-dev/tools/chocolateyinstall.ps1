
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2512d236-bfe0-4697-91cc-3e7cc2d3e632/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2d8dbef6-4995-404e-8001-d99f20f0b5f7/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'df45d6224795447ef31c57741da54d91c8de2ac1f09bf7180b52a8d815bee0ed'
  checksumType  = 'sha256'
  checksum64    = 'f0d9aaaed29bdb13c75336a065071446bf2a5a6c16426fd03dbf86ab142c90de'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








