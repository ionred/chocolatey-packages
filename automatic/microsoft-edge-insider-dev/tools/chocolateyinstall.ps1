$ErrorActionPreference = 'Stop';

$version = '128.0.2708.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e27ffca1-e131-4cec-96b8-ff02ad4047b6/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dec8b082-b62d-4cdb-9c3c-8a6402bc18a4/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '3553B7300F37FD0EE8AD50E655DB00DFCD03C77B07BD505C9EEBA317FD7B9D6E'
  checksumType  = 'sha256'
  checksum64    = '463A76F9CCE724D3B52AD1BABC41125D6B76E94CE7D9682266039EE9C18BEFF7'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








