
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e990d407-3aff-4ab3-84b3-4761d2baafb3/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dc055b52-4d3a-419f-b2fb-cce1a79fc8d6/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '29f606547f9a8fabed5fb6fc5ef6eea23772e335ff30e7fc90274ef0b057f0c4'
  checksumType  = 'sha256'
  checksum64    = '973cf95bae4e15ae17293e6021b32233b27ac0b553776a5ba4507aa07b8cd223'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








