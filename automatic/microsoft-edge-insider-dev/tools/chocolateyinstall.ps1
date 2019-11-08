
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/d750346a-68ec-4e03-b1a3-3cd2c1225c40/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/ab8efa56-386a-449b-b2f2-e0d7f43fd8ad/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'cbf65b10ffe74ccf25199925d488c3b6c9d3e57a4a1ff349cb28cacef4ea72c2'
  checksumType  = 'sha256'
  checksum64    = 'f522288aeb2eaafde266a73918939c4de5742f7fd85890b1e1492ea47c0c998b'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








