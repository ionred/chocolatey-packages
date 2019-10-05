
$ErrorActionPreference = 'Stop';
$url32        = 'https://go.microsoft.com/fwlink/?linkid=2093377'
$url64      = 'https://go.microsoft.com/fwlink/?linkid=2093376'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '03207F387E83003A64D850EC9F455431C2A61CE897E336C598116ABFD8D37D46'
  checksumType  = 'sha256'
  checksum64    = '22D062A299BCBCC3B1C1CD9A5F1AADFA9522F9CAD4C540F3A2130DFFA952B596'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








