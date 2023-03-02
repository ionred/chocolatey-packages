
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dc9ad3cd-170d-40f1-83ba-fca2abcf9367/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/68e4d314-ce66-4213-8e68-cc4a736d8898/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'd6a72e5816d95bd52572ea3934f41ad3945f7a6720ca2a5a3d2e33ca71df2d76'
  checksumType  = 'sha256'
  checksum64    = 'c9fa71b24352a3f5dbeb94bacee4e34b34e2f98c591bd7b5a2987194e24be3db'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








