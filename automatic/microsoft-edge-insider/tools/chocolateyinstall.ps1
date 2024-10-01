$ErrorActionPreference = 'Stop';

$version = '130.0.2849.13'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c044e54a-8706-458d-9a8f-444641a159cb/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/238ec2f5-d87c-497a-aac4-17d2bd301415/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'A7BDBFF20E93854F18A34C187ABC2129B050BD010DF995F02EF67D122A40B25F'
  checksumType  = 'sha256'
  checksum64    = '30F2A72B1C1BD6E6584030B911A7D9FAE326F4FEE2D7CA862862AE5B478195F5'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








