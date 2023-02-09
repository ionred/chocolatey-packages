
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/46774927-8480-4a85-8502-4cf4a2549479/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b3fd7ad9-d818-4e71-8ba4-0b86039c7cfd/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'ec82af3a164501adbf5cc3e715e2f881fbcd2be9853514912ac8aa6fd3ae139a'
  checksumType  = 'sha256'
  checksum64    = '9257a3969b4b27fa41f389c3cebb17ecb9a60549e7a1f3a9d8d961c02d00f628'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








