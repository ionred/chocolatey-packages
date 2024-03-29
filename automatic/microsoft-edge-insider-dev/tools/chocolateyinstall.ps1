$ErrorActionPreference = 'Stop';

$version = '124.0.2478.10'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/471ee1d1-4ef0-4b5d-bca9-af23023a00dd/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5b87d5d4-4c89-413d-85f6-a03026a8b3b9/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '2349B90D3F75EE2D9895E0AA20BB24A5C3A7BBB1310D848884D73C055E751151'
  checksumType  = 'sha256'
  checksum64    = 'B0C72A252632AC66B720861C29F6F56ED6343B885CDF7CF87F40A8A1D0BAD384'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








