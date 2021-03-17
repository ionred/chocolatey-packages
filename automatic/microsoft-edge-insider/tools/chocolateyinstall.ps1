
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c01d8f07-c91a-4d94-b7e6-61e456f9789d/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/147792a8-a061-4f8f-b98e-6746b33ad0a7/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'f6ce3aa4b70cccad165b05315e07ef62eba576773cd699186c78be5c61913f8f'
  checksumType  = 'sha256'
  checksum64    = '8ea9a21ca4e017fcc22ede7a65c8980a835cae7ec4f4d86b2530d90b818c8b4c'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








