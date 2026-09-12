$ErrorActionPreference = 'Stop';

$version = '154.0.4258.12'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/148eb55b-800a-4e57-a115-0e34b0efcb37/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3751a255-17f0-4ce8-a1f2-a8a0f5e8f77e/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '83995F9512C63632058D095149902011A6ADDE2F07E7559F7E8F75A6E0D68EC6'
  checksumType  = 'sha256'
  checksum64    = '4E14083E81749BEF5D6E3DE166741DDDB057F6824406755BEDEA2B5EC01184A2'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








