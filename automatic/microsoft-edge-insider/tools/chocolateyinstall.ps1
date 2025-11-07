$ErrorActionPreference = 'Stop';

$version = '143.0.3650.7'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3f449c99-1fab-410d-8866-a9abf28360a4/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/971a8fb2-0335-49db-af45-067044d88385/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '40E0F807F04621D94161FF83EF9DBD96FF159C1285780DF5A44137BD2E7F0CED'
  checksumType  = 'sha256'
  checksum64    = '1245ACDD1711C52F6087C3FFE09DBEA9423A8397C23B7DEEB4A2788723D019AD'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








