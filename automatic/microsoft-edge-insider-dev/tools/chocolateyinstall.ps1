
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/959b8875-a160-46d6-aafa-ba3eaeb17979/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/744e052f-0099-4ff3-8ccd-9cbffb1dcc5d/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '96f353b4739acf09a03b1b83f4581e5cf722e337806b3e0e6b686908057f9bde'
  checksumType  = 'sha256'
  checksum64    = '675f00d8e0a1a397e425838acdac555292e3bc67b72ea457d8662284e964a5fc'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








