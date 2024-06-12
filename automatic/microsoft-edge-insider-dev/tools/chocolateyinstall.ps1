$ErrorActionPreference = 'Stop';

$version = '127.0.2638.2'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3394f188-8f1a-495c-acf0-047b5a395d27/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/521d1573-3ab8-47ca-9e5d-30ff42b394fb/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '4FC3681011403263DB57DBD0702DA546A8C76824F002B56726CF16E53948B720'
  checksumType  = 'sha256'
  checksum64    = '7F68C3424D3AA2383D3F9BB02543380030E6919331338C5A169BBCD02AFDA9B9'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








