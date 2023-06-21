
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/81e3f982-daf3-486a-8d7a-c6cb47152d35/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ab65bfb2-8b6f-483c-b9ac-53dd524172a4/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '71a52039a8a44e5394bd1586bc0047ebfd7d62acbde8479c5ede3ba237302ed4'
  checksumType  = 'sha256'
  checksum64    = '9998eba7cfc55fc52e1b6d896ce892cda3159163e6e7a5012a8413036c4001a5'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








