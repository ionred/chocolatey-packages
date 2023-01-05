
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/00a6808f-7b7a-4d10-99b7-b68090ebaf9c/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4de84b50-b3a8-4751-afb8-73812bce8713/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '87401c0672c3bd08266b4c0fbff3cdfec8f44bb2dd3b27aa3742bed83938763b'
  checksumType  = 'sha256'
  checksum64    = '4dc76967d9ba3bfdb275b8d40ae3a9ed7f77c661879bfc1cd6c4264ebdc09540'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








