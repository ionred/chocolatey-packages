$ErrorActionPreference = 'Stop';

$version = '125.0.2535.6'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7ee29800-082f-41de-bf78-67aba5b9cd14/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1b8d1249-40db-4486-b387-c5d40373444b/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'D90DD2C284B7A7B7CF37ADD78A96C246E121E4D245873769F82B80806B6E5CA1'
  checksumType  = 'sha256'
  checksum64    = '9925FF726FE9E4B2EFE50536855D7A8DA1406ECE027AC6D24AD4F3E204E612DC'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








