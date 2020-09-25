
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/2562e6a5-f49e-4ad9-b41f-7cd3d3992f44/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/290a0ba6-92cd-466e-a755-0a65fc934788/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '90751ee7d505fdfe5aed77b1093525a4e0d384ae8d568c0a27ce24b35d608fa4'
  checksumType  = 'sha256'
  checksum64    = 'ebded73f694c8170dd6df637fdb54f053ba8659d268b6321cf582947803c9fac'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








