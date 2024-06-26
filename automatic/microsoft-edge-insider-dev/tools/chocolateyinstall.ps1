$ErrorActionPreference = 'Stop';

$version = '128.0.2661.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d1af9c6d-520b-40f0-b916-92afe8a0a927/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/77e10d4d-52c1-4c7d-9cba-9e5f826fa21a/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '97D5661192734BCACE04AEDFF3D807C10AACF3F78B99812CFEF5B3BF2E41F352'
  checksumType  = 'sha256'
  checksum64    = '97F6DD93A72602F8A99C87A3EAEAA188135959771DE9376F8F949CAA037DA10B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








