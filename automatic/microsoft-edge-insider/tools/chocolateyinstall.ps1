$ErrorActionPreference = 'Stop';

$version = '155.0.4283.13'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/273e38c5-1798-46a7-99c1-155316810a8b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/aac547ea-57af-46ee-a0ed-155180d3fb12/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '19CACAB7787F6D2412E91F951D9BF1FC9013705A35D6736CE38D5C590EAB88B6'
  checksumType  = 'sha256'
  checksum64    = 'D280CC0F1265D8DEAFABDA79B8DEB94DF706531F774B6AF2430512E23DA8A417'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








