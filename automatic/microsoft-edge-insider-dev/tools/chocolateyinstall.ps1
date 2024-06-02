$ErrorActionPreference = 'Stop';

$version = '127.0.2610.3'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1cfe2a3a-bd48-434c-a822-c06928f0bd0f/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3bb9416c-be2c-4c7c-a50f-3a9b84ffa89c/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'C8A54403C560230CFC3F27E4A0EEA9A1017D68EF2BD4BD72400E333593F132CB'
  checksumType  = 'sha256'
  checksum64    = '433A65B4F3A321A765E51A03CFD0C730B373F873673C5E81BF37118C09A9F03B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








