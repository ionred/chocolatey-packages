$ErrorActionPreference = 'Stop';

$version = '128.0.2739.5'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e0b4b298-050a-4dbe-881f-829d5ea3c792/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2333b628-305c-4db4-8f1e-19cdf3427a54/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '522BFBC93EFC9F00FB220FFC816F108914A303B71742FB841B148B24D0AE1DC9'
  checksumType  = 'sha256'
  checksum64    = 'C42841EBDCD22C080CE99D075F48B33DD98CD018F503608D523C4DCF25EDA08B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








