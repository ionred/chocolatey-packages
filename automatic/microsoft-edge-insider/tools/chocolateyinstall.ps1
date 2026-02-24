$ErrorActionPreference = 'Stop';

$version = '146.0.3856.20'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c2572d0e-097e-4335-9f00-f133bc097e2b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/31ca3bbb-0d14-4b08-a819-8efd1d07fcd0/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'EA508AACAE9D215F91CB6F9C2855D86703574805E151C79EA379FCA0DF960D36'
  checksumType  = 'sha256'
  checksum64    = '472408319206FB25238EACB54AF2334925A40711DB198AEB8A1415766F11043B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








