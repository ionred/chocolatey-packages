$ErrorActionPreference = 'Stop';

$version = '125.0.2506.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3b0f87a2-2547-48b9-8039-d34aefb47372/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8001ee4b-da9e-48a2-bdab-ba682fb9beba/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '329E0F6EBF1EE67F0E6A4A14B9EF06C28F3CF07AAC3048DF2CFBA8D45F24D9EB'
  checksumType  = 'sha256'
  checksum64    = 'E579E616F6CA906ECE75D60589537D77B2605F589C00F80EE7F32B0818B6817A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








