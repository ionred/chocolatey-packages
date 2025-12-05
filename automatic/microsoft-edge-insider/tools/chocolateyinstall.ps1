$ErrorActionPreference = 'Stop';

$version = '143.0.3650.66'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/55beeef2-3de1-4883-a681-a5870659e0e0/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c137c5ce-2d69-46db-a534-844bdd5733b5/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '4C209312843B9B679370B2B40D68469F6187731194C1B9993BF2B7506E221887'
  checksumType  = 'sha256'
  checksum64    = '6BC35A5226157E0E8D019CB103EF05939914818450DA4128BA38F17BD75D25A5'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








