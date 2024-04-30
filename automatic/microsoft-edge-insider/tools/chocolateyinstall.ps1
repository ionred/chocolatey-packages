$ErrorActionPreference = 'Stop';

$version = '125.0.2535.13'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ef8014cb-6a74-44a5-8eaf-69370d8cf4a0/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/10b210ac-f97d-492c-95d4-416d47cdf134/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'D82F4BB40A72CC6F89908F0E320FE82CF752476006EFFB2D22191B3F2B8AAA1B'
  checksumType  = 'sha256'
  checksum64    = '02D9FFADED55158FAB3128EB5D5ED8431BBFE482371CABF4BE7816357DF4A33A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








