
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/7913b0bd-b0cc-40e4-ad12-994e72705594/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/ee5e1206-f825-4771-86e5-be89a5d2322f/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '48458d5de04894eba4cbbd4cce9bb28f28dc8f217910559eedafc3c6ec45584f'
  checksumType  = 'sha256'
  checksum64    = '933986ec59d890b86a1196a3a60ed9a729f6066d16fc38d09053a8ff1d6ec3e0'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








