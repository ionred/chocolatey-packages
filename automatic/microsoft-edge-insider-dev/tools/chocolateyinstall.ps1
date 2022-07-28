
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e8345666-aa61-409c-9475-3d877712bbd2/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b94d52e3-edfd-4833-befd-4a778787d758/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '563f846b31a556f581180a5678dcd151f3b15781fb184475bc0db6ce92f9f854'
  checksumType  = 'sha256'
  checksum64    = 'd4cddac21e392c822016bed94663adbd9ec6300033e6a3b769541ab9f07c0df0'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








