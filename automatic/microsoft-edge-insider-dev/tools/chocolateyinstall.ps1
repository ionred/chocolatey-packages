$ErrorActionPreference = 'Stop';

$version = '151.0.4129.8'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/07789c47-fede-449a-a190-74141f2704ce/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b7122499-f4e2-408a-9967-c9fe87790db5/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '84467B181F73287D090AFA544197E7720352A72F84F75FC0F089BA3BB550CD40'
  checksumType  = 'sha256'
  checksum64    = 'FC850C50722FFD3D0989DDDD179BA3706018FA7DC92C9EAA0804D0F95FACEA49'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








