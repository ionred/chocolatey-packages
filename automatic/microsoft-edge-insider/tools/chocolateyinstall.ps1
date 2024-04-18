$ErrorActionPreference = 'Stop';

$version = '124.0.2478.49'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8e8cd033-ec13-4ceb-9050-e579c1c38d2e/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fe498d63-e253-4418-aab0-b0344c5b04d1/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'FE348AAAD661B3363442D7D51313E5790BCE8AC5B751EC015D0AB2A770214E04'
  checksumType  = 'sha256'
  checksum64    = 'B5FD03528FFC631FDBB311DB447FBF792F09EEC2F35239DC0C7FF84F0F7105E1'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








