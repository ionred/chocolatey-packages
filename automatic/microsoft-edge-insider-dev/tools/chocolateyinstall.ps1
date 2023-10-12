
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2f9d97ac-e404-4eef-9a23-4f4a16558ed4/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/80de2f50-e615-47e8-a699-c803702eb8f7/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'aa929688e64b741cc0e7036b844733edc6cabc1a4ff21b1e29cbac0c29dc312a'
  checksumType  = 'sha256'
  checksum64    = 'a95b5bac1dc866b5d93e7321fe8b5e7ada6993ee2da753752d3226f52f80c151'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








