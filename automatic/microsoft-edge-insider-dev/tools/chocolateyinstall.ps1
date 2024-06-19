$ErrorActionPreference = 'Stop';

$version = '127.0.2651.2'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/24c36953-1a1c-4f9c-b612-6d1c5ac1a4f8/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4c1f94cc-00c5-47ba-aedb-35e889b2ab8b/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '4C3DA020073E17D19B7BD7D923C5AA01251D4178D98F877B6126977382540986'
  checksumType  = 'sha256'
  checksum64    = '253EA3E2D3B81A8BD31723C6309278DB20DA8982A74C4BECDE6B60DCC6F08D49'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








