
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d90a2cb8-b0f2-467c-8956-ad905f2ed197/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6fc018a0-5683-4ad8-9af0-f7061615d613/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'b076fe8f9d0d45df61058b87381423e3bba767aa3a800888ed3eb8d5403bd9ca'
  checksumType  = 'sha256'
  checksum64    = '4d7a4fc756049d80d1632489ae163f7a04d8dd7c600cdeb3f9bdc9d8b02a24a7'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








