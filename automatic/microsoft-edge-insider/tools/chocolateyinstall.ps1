
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/18da40d8-995d-4b08-8bd3-f22c3e2e0e4b/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8c8c91a9-b2e4-40d1-9910-a7c430b4ee5a/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '4e2b4e13f1804fb41c4dba94df3582b1cdf77716d01306246b24c1bbf98bf1f9'
  checksumType  = 'sha256'
  checksum64    = 'e37e50e9180e4af78342086947446b5f832a6a7d8d56fab645233d0eb9353a7a'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








