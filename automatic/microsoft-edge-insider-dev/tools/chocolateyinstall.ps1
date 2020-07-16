
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/ca4facc6-00a4-43cb-92be-f7ed770fd416/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/afc5daba-8d8c-4c0d-8040-08665a680159/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'b789443533d2c8fae97ceecfdacbd2229aadec1e792a98983136081b6b824735'
  checksumType  = 'sha256'
  checksum64    = '3c0afe6bd437d1805f58d53bf36909149fc9993e98698b131d32641fae290fd9'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








