$ErrorActionPreference = 'Stop';

$version = '126.0.2592.13'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/36b7de59-5376-4e86-bd2a-740100eda053/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1d36ef25-517b-4484-959b-9b0dfc1b1d1d/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'A74AD0A4B584E951B7A5A5F1AD7FF619BA8A6F680F7A9BEC638734512D20FE59'
  checksumType  = 'sha256'
  checksum64    = '470A0D837DC6E49E804A943386D68882E7E1FD82835DC783AC41AE2F2C37DBBA'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








