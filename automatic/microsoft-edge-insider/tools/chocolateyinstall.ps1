$ErrorActionPreference = 'Stop';

$version = '145.0.3800.65'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d127e543-6e9c-4e4d-b6d8-48da02367faa/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/973ef752-ff5d-437e-be26-0579ab1b6342/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'E567320CCAACE12C9A66558334C2DB5D0D44BC8274E293639D2166B9873CC0DA'
  checksumType  = 'sha256'
  checksum64    = '3ADA9336F1FEB34487632E3FFDD14C5F05969CE79F2CBA50D8B40C51D97498B5'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








