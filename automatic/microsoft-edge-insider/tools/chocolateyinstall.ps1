$ErrorActionPreference = 'Stop';

$version = '153.0.4234.8'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/02c17885-33c5-4b9f-91d2-ffc6a2454fb3/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8732eb82-ca2e-423c-8c14-aaa150d3e110/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '77B3A055891B4E1271FFB2CDA668BFB3F6FD7F121DE73D09AA4C2C40BEDDC358'
  checksumType  = 'sha256'
  checksum64    = '26644337D1A3941C455636B19E8F820B61135E758BCB3C0B3373C6301E66978F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








