
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/42987212-96a8-4a76-abbf-d8ae4255e3ae/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ad8e6131-4494-475c-9de1-6e5c317eb1bc/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '14216eee3b821f3530c8d6bf64f0c118d0d2760fdfdbf5c516e49e81e29d2272'
  checksumType  = 'sha256'
  checksum64    = '3c8802b8f7a7efab93772f7ba031d9412de088480ca101fbcb76a8ebcd5ceff8'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








