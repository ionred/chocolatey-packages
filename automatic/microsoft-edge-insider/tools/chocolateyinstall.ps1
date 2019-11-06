
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/b5905cec-08f6-4d6e-91ea-34ac2347ab9d/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/bae7fa58-d768-4f8f-9307-bc7cb95a3a5f/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '12b1de49a19681e926fb94be91c3605254ac45ebf4705cfe0af51df211ca1ff3'
  checksumType  = 'sha256'
  checksum64    = '8b66fc563e477f68d4ed0ef62b1ce172b7b21f4278ad8c36b94bd6f0b7f28b0d'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








