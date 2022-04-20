
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b79185d0-fae7-419b-a714-da6e9b984101/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c4f03535-153b-478b-8c39-c1affed94a3f/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '7c607602a8ea8a8cfc4c0272c08ac7805a9eb77786843996a1fa0c4a71bc0e18'
  checksumType  = 'sha256'
  checksum64    = '6b0138f6c3398627377448cc0c8576c5b7f3d7a1062738bb1d20bc8bd0f60380'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








