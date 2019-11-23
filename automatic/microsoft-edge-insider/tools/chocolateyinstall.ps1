
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/7ab348b2-6c84-405f-b7a7-cf69bedcbcd9/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/a7b4a115-0657-474e-83ce-149257e7d8d7/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'd9052ef5b8896a966321bf7fdc9b7ea7be68a2429921658982da82a64ccc4a75'
  checksumType  = 'sha256'
  checksum64    = '94120fe9e7ee036cc6ddb53d49c6b62e2b90ae1ae027fbacaa8ae9f8a2ddbaf2'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








