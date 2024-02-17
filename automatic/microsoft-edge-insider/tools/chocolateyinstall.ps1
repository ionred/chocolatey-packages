$ErrorActionPreference = 'Stop';

$version = '122.0.2365.38'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c34be167-5e65-4566-b3f3-a9af57540feb/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4e5d4a2b-d0e3-44db-8fd5-f23b03cbdf39/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'A8D7584DB26EFFC45D39BB56E13EE5381E4CFDD226380446C36A437E9102D975'
  checksumType  = 'sha256'
  checksum64    = 'FB672069C1708068D0974BFD397F6B03CBD1FD14331F62BBD0789CCFD6D3AAAB'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








