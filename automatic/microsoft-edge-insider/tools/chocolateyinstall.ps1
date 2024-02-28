$ErrorActionPreference = 'Stop';

$version = '122.0.2365.59'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4ee9f170-9d89-42f4-b27f-b60860b4cf1b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/67b173e2-1c3a-494c-815f-0ac34b9efec5/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '2BFF0C2F45C29FE85968A3C7352E961CAEE9DFF66092849CD1F4962B218A0A94'
  checksumType  = 'sha256'
  checksum64    = 'C83362E028790795B104A5BECE74F55C20E9BA9A2DA1445DDD573FDCE75391D0'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








