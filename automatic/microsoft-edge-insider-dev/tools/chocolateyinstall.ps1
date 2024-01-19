
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2ee189b4-43ff-4369-afa1-379ba3ef9154/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dda77c79-caa3-4c1d-9bb9-8fbe339bb163/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '25b14380f502946790dfe337a3c9c3453e322a51d0f5ef64fb8d285d7f9bdf26'
  checksumType  = 'sha256'
  checksum64    = 'b8789eccf08caa1579ce2e7f4aa49f87822c61f0e79d9e374dbf649803a83836'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








