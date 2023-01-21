
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1cf0e113-9aed-4d8a-88b5-48326f1f16e9/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b18f59d4-757d-47f2-b0da-a88ecb007dcb/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '5fbb6413e4052e4d8157c5ed7ea1002e6b95a7161ba2b3cea4322f738d31deab'
  checksumType  = 'sha256'
  checksum64    = '2c9b70364f062a2f6fd2cf566ee02e1b0393f459fb02b4504be77faebdb518a0'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








