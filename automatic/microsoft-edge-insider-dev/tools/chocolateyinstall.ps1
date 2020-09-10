
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/4b39ff06-8179-4157-8333-a9fe67b6c713/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/47e4f06c-a9df-432c-8b5d-0e117c622b60/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '2aeffe1a5e43ed47451fc349e8d70cfab47362faf0f10142d76ab337e465fc57'
  checksumType  = 'sha256'
  checksum64    = 'bffdce1220907ac104c3681165756b1a91782af24848ac1497f08c8522ba3875'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








