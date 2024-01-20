
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f0fd9604-01eb-4e47-b0a5-ab90a5800d47/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/566aa801-0288-4d7a-9dd6-6523370f453d/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '8ccd2a67c8324668cc9379c43cc7afa387a668ef64e5e24c99a9a8ad5e1a7525'
  checksumType  = 'sha256'
  checksum64    = '465cd0a07fbfcaaf33efe57d5684d86923e1c1a031c82df5503cb44491354fa6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








