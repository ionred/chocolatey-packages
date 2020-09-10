
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/f0956965-2c30-4d5c-80cc-27abfd3d84ae/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/c65e9ee2-63ed-466b-a11e-ed8059172309/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'd21f3fe624796c85e6b00aea9d49b5cae0ce73f4ff1c5b71559057e754afe6dd'
  checksumType  = 'sha256'
  checksum64    = 'a1598d2103b80b68ba7099041188ea2f5aa9b293a014c6d71945de972474d4dd'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








