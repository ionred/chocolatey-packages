
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b9d381e9-a93f-45ca-bdeb-524c2f6438f9/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8f0a25d5-93ec-4967-8d54-3ced910f8e4c/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '0380023f2a97cf607e74075110563a43c16a89b4b0bfc9cd0b4c590b66694f7f'
  checksumType  = 'sha256'
  checksum64    = '96f94b0ce22f688444c7e73ced1d2c6cb7b31254be61ec2186530f15d9cfc634'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








