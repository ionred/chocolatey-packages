
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/13f37d0b-8ecf-4f22-803e-82e7ad8b729d/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3c3c4880-1ec4-4eab-921c-d42fd09bf0e2/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '589296c0eb2acd992241bc499f10950f0030f218d404c3c355d6d83f72a50fc5'
  checksumType  = 'sha256'
  checksum64    = '415c1e1a0d2b7289b0857bf251c5d9a5840b72b4816d458370195ccf9e5d1a7a'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








