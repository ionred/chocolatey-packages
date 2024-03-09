$ErrorActionPreference = 'Stop';

$version = '124.0.2438.3'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/20b133f7-afca-42a5-aa89-4c450e36e4ad/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e8a0ee2e-b323-40ed-a73a-35a69c97ba1e/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '0E44AE684264495D4A0AB3E6E99ECEA6C34C33C0370FCC843716615A0A4E63CA'
  checksumType  = 'sha256'
  checksum64    = 'E0AD73E8724B9F6694A36E07B745EC4E4839B81F6D6A01EB32C6D353B9F41ED7'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








