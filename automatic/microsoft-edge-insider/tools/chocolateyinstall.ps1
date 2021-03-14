
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/53bc2bc7-d0a8-45a4-a955-2a0a91ed7cb2/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a9e49f0f-f159-4a5b-a0d3-4d7bc35b5c9b/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'f4c214adca884477f8c1a98a715df51420237e2a5b6b6f3b5784749d8bc1c231'
  checksumType  = 'sha256'
  checksum64    = '5119872cec781418179c0ed3b41d70b9fd6641052fdb97e8704c8aee8b89432d'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








