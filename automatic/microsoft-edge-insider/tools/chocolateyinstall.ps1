
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a3666152-c2be-4f65-813a-fa2c01fd22d2/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c05c8a20-3a2f-4bec-94ae-8e4e3c7bbc46/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'c921ad38336372cd9a4b40dcdff794edd7b49e73009bdf2554fe8fa7bff8b22c'
  checksumType  = 'sha256'
  checksum64    = '1f99d6fcfd5d2134dee53d4eca8b6c6ab24ca42a23ce15fce5ef39b17557a2dc'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








