$ErrorActionPreference = 'Stop';

$version = '132.0.2917.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3a13989a-41b4-444f-8880-3e589463ac55/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e18c7c1a-4fe1-4c2f-9741-f53ab0279149/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'C2C1B9D993E655F41DB8E30A6B813AD913FEF80A7F878177E8C02A40A219E2D9'
  checksumType  = 'sha256'
  checksum64    = '8A5A2764F72E5D57915775A50BEB822FFFDD9BC18F67F19ED773B095A17DB315'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








