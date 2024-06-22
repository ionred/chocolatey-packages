$ErrorActionPreference = 'Stop';

$version = '127.0.2651.8'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ffe71c8f-1442-4701-a08e-7a804e81ad51/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/afa33fb6-0d9d-45ef-b034-dfb938c5dd51/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'F2D7ED1AA59F0E414182A6601AF7886DAA55DE7C4BAEACA7D0641B6526203B36'
  checksumType  = 'sha256'
  checksum64    = '2F1BEFDCCACC65EC64E9541E82A0180F5BCEB29424ECEFD338F051DCA46D9A00'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








