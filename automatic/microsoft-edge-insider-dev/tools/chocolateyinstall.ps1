
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b92ce967-a442-4402-9125-8a7e3bc66cb5/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/24965be2-a026-4a58-a5e1-826fcc921a2e/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'ce2e573ddfd53a58adf149c1601c755c4d0bc0d16229a7e01e752c11aec85534'
  checksumType  = 'sha256'
  checksum64    = '5218742ab693befaf14afe85c0c9c5f078b4c833570f61a05145b69c0ef34123'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








