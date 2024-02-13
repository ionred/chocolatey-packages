
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fc70fec9-3d59-4d89-a9b2-62b05367b54b/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2b2c89e5-b4db-461d-a077-46e371f5a494/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'B78BD999021D7EF3FA08A28189A9BF0229455BF45B9130B2DF6B6426348948FC'
  checksumType  = 'sha256'
  checksum64    = 'D0EA0AB5292E1CE42152CD0C3F8BE2331A62CE4A7AAA8A2933B327A833531214'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








