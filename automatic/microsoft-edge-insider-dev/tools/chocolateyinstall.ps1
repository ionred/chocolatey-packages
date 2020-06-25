
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/234745f3-d209-4a40-9567-73cbbecf20aa/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/a06f5de7-f7d1-41a6-ae90-d8f5ece7e395/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'cbaf1f489b29f15a531d63b9c747a843b13fd61f0a5bd87e405ee359c8259d71'
  checksumType  = 'sha256'
  checksum64    = '56adf15e62f556fcc5bd64638a37f30bef13cec1948aaf6b1ac1dde5ea92ab38'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








