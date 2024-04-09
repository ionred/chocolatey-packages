$ErrorActionPreference = 'Stop';

$version = '124.0.2478.27'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6d7f5b03-84cd-4e83-877d-e20a73e90c1f/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a56e9586-6ce6-499e-ae55-da934e680873/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '206C04052139769E833753BE74BEDC981665840BAC006178CC9CCC2C53361F82'
  checksumType  = 'sha256'
  checksum64    = '4319434F4FC346241D052F3A05C8DD0B23E1B5CC66E6A0E475BC0914F44029D6'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








