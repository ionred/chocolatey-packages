$ErrorActionPreference = 'Stop';

$version = '125.0.2535.51'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ddc095ac-fe22-4cee-9ca0-6ff8803085ad/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f99703e3-0e43-4e40-b96c-4bb13ae6ae54/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'F0DA9248D1B280BC4445F296F601A50F36C36841A4B1A6A857863789229E62D1'
  checksumType  = 'sha256'
  checksum64    = '1B46E3D9693788C3D0CE5BBA32E029087151A8E088CBD886048ABE9586E9A4B3'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








