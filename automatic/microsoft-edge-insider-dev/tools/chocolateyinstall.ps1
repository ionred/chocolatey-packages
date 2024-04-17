$ErrorActionPreference = 'Stop';

$version = '125.0.2518.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7ee29800-082f-41de-bf78-67aba5b9cd14/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4fb634c7-5503-4fa8-b028-7d7b9483fd58/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'D90DD2C284B7A7B7CF37ADD78A96C246E121E4D245873769F82B80806B6E5CA1'
  checksumType  = 'sha256'
  checksum64    = 'EE739DB76B50064E38CEA65413CAB1BD23F5FF81A4D0915D930DE83A097A3326'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








