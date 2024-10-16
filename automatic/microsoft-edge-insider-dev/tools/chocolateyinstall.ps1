$ErrorActionPreference = 'Stop';

$version = '131.0.2889.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/30464341-7d74-4905-9dae-0505083b6ceb/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/367c7600-9d29-449d-a333-e6ba41148280/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '7FFBB7C13AD569DF35B6FCBB7FC19B65226C5409215823C994FD7BD7AE0D8C9D'
  checksumType  = 'sha256'
  checksum64    = '8F9273D46C657FE8B48EC81EB14D0D2BF437C9D730DB470A68DBD82C36050D23'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








