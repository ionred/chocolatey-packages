
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/98dfb4f5-71ef-4444-ac5d-dff8a15ca4d1/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7ddd3b7e-98e9-462b-960c-03958fa07a72/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '9c9739ece2e873d95d10814594d93d38d553f99a43976b355dd3c7e4e69e55e1'
  checksumType  = 'sha256'
  checksum64    = '64ca3a3b6dc5e438137ae32a748cb138c38d74ead8d38657647637e76ac82162'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








