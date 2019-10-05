
$ErrorActionPreference = 'Stop';
$url32        = 'https://go.microsoft.com/fwlink/?linkid=2093436'
$url64      = 'https://go.microsoft.com/fwlink/?linkid=2093291'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'a37ddb3969800acd52a5777ac8f2d3bf07e4048c944351e380b1b6b16a79be3b'
  checksumType  = 'sha256'
  checksum64    = 'bacbbfd6377905832ba91e7c234b85de19ee458bdbfb06d8f7f2dc7aa0ba93e7'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








