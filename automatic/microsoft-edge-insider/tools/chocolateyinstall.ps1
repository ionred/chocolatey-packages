$ErrorActionPreference = 'Stop';

$version = '126.0.2592.68'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d716e88d-eadc-4cd7-aae7-5b2ad6c81a5c/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/01b5895f-c12d-4c20-bd2f-a0caf2e0b845/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '38A75F67F1875393F4FCF4D71B65535F767C84A25A806EA2B08AE73C5743B781'
  checksumType  = 'sha256'
  checksum64    = 'EAB8690F304A84F84DD2B348EE99BBEE0C5D54C199D3A0C8561CB0BC9F174266'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








