
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9d89b9cd-a9f6-403e-90c4-c4805d44a134/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9e1b3140-2c88-4b32-8b6f-4feac7ce066f/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'ee9d9b576a9b93efb86599e61d0480ec4b4334161ef3ac49c7d33b89eb276cca'
  checksumType  = 'sha256'
  checksum64    = '32decc0ce9861be79ad0126095033e540459ec25b97b4c58f98c5c5f6d37488c'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








