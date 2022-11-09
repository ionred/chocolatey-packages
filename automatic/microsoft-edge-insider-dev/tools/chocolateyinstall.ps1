
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/07a0750c-6cff-4018-8af9-cc09e9380136/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7f28a3e6-6875-4ff7-816a-74e194b613d6/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '30f3934ca965a1e6ea6a9c283148c60a4746447269dcd9d3e7d4d961aab4eb9c'
  checksumType  = 'sha256'
  checksum64    = '2d4f3024d6cbf1322abc28b8877bd2741834fcfed1dad59609d0e2c7322033ce'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








