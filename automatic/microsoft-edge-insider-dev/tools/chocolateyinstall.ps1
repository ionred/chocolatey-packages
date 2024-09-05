$ErrorActionPreference = 'Stop';

$version = '130.0.2808.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/097678e2-3bcb-471a-87af-a001a9393caa/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e009546f-983e-478c-af3e-5727ab59720d/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '6BB1781027F7EBBB201F51CDDF2AD19EA333F80049461A8A0AC5831A584E1189'
  checksumType  = 'sha256'
  checksum64    = '5384C6E6D3A58DC5AA4DDD6033BA771A730DA6D55B2D0AE49FDD6A635C761BC8'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








