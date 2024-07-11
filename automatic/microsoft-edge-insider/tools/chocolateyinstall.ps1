$ErrorActionPreference = 'Stop';

$version = '127.0.2651.45'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7b3cf066-b314-4cc9-919f-acd139ead1c5/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d3f18987-64ea-4dd6-a93f-247cd81dac89/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'C6C9E1B820CBAC326378E7AF4CD6075C2EB616DA9E10ADD58D36D972FAB3F613'
  checksumType  = 'sha256'
  checksum64    = '10F10FBAAB90FAA730928CF8A4F53D9953BF54420E6A21F28A397B85B413C9C9'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








