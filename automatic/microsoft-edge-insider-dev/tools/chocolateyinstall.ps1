
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fc70fec9-3d59-4d89-a9b2-62b05367b54b/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2b2c89e5-b4db-461d-a077-46e371f5a494/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'b78bd999021d7ef3fa08a28189a9bf0229455bf45b9130b2df6b6426348948fc'
  checksumType  = 'sha256'
  checksum64    = 'd0ea0ab5292e1ce42152cd0c3f8be2331a62ce4a7aaa8a2933b327a833531214'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








