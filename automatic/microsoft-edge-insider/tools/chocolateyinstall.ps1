$ErrorActionPreference = 'Stop';

$version = '126.0.2592.24'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0232af02-e4ff-44d6-ae5f-4e2c02abeefa/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/44b426a5-f94f-4f78-a151-07796854ee9f/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '788942927E1D1CBE3F768FB0674A34704D1C65217BD7EF1B018CD593FEDFB022'
  checksumType  = 'sha256'
  checksum64    = '761FC0C1516ED8B38B9F5604E655D2995F1C1BE249871710C8D9044C1A18243C'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








