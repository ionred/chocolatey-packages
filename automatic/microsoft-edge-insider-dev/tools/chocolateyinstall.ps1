$ErrorActionPreference = 'Stop';

$version = '130.0.2835.2'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/097651c5-ed54-4bce-8917-8399e318227b/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5eb9e82c-d70f-43ea-aec3-7deba2ff95b8/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '0A13B1620B5D938F8AAF4C6E260CD9A0AAF950180F60DF6DBC109D7655606BAD'
  checksumType  = 'sha256'
  checksum64    = '1389AB1B28894E079084960C6A22AE515189E925DC0A1BBC06BFE87599522149'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








