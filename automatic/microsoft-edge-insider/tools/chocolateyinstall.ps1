$ErrorActionPreference = 'Stop';

$version = '123.0.2420.10'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cf03cd37-da76-4094-9075-13876318db82/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/db687930-d805-4928-a149-7ad5d6287302/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '206A3AED76755983A2351D96CD407A2B992DB7409E76927A896B3F629750F5D9'
  checksumType  = 'sha256'
  checksum64    = 'D8F02504413FE388DBCC2D9EF02BC345280BCA2E54516C8CA3761C4E1E18D734'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








