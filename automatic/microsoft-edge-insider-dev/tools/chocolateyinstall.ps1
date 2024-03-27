$ErrorActionPreference = 'Stop';

$version = '124.0.2478.6'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ecdecc8d-bc42-4703-b9f0-765637a69f0b/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/204c7e18-e971-4f86-9301-0fa9fcbd6f35/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '1E61046C6B9659AF6766C4FF99DBC7DC7D172F593E3C7FF59B82A7F6E83F3E9A'
  checksumType  = 'sha256'
  checksum64    = '1BD6208A4793BF2942E6EF99A819CF68F4C93B04F5DE1B1CCA103399293D2D10'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








