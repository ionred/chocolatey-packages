$ErrorActionPreference = 'Stop';

$version = '131.0.2903.9'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fc4f95f0-64ba-418d-842f-239997c5019b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f37400b6-710f-4044-8245-a50f8c0b5886/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'ECC3D7779B21F7D031E565F1EDC1E5A6217EB58942A15431EF94AC0DF6840A94'
  checksumType  = 'sha256'
  checksum64    = 'FA852E7A6ED3E09748908297C7B763D58DDAAFF7729350735AC73029FD916654'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








