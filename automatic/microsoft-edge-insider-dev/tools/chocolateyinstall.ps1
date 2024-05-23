$ErrorActionPreference = 'Stop';

$version = '126.0.2592.11'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4506f775-7eff-447e-b2c7-03ca56d7cc85/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/71d6978f-4266-496e-9a22-d186af95ae1c/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '9A2C987E11D0C7DEE75FE65ACE6477C2B47A54A76948DF0971E1C156A0954725'
  checksumType  = 'sha256'
  checksum64    = 'CA6682DF72F1D61D8778DFC98EE9D2B27FC9A757DD86DA67328F872434A4C009'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








