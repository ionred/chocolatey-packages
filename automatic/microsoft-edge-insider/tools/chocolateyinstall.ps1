
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a99a0c33-cb7d-4c62-a1ba-f6e9e28c4a6c/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7016ab7f-3425-4eac-b82d-bf35613c23f2/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'bd501e576e3dd22049fb20d43d74c67abb7ba8c2798760a688e32e10a373782a'
  checksumType  = 'sha256'
  checksum64    = 'c1f32d66c51c439f90a91b65babbd609780e7d1fc7c00ddd4217ef6fc7323b32'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








