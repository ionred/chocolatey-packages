$ErrorActionPreference = 'Stop';

$version = '130.0.2808.2'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/097678e2-3bcb-471a-87af-a001a9393caa/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c6bf1319-af6e-461a-aa6e-144b1f204efa/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '6BB1781027F7EBBB201F51CDDF2AD19EA333F80049461A8A0AC5831A584E1189'
  checksumType  = 'sha256'
  checksum64    = '9484B6C6604C02B3D2B873168B2A56401B027D80CB122902DD84469272CC6C9E'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








