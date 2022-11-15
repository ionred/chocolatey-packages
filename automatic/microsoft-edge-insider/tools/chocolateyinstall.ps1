
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c3bfbcca-5a22-4c29-9fd2-3a614e0e61df/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6fb8787c-7521-4dd6-9c5a-10f383a25172/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'c9e7441397bfedc30d3a433eacfd8dc2de3ef4ca2a2d6d312aed3daed8cc0fc8'
  checksumType  = 'sha256'
  checksum64    = 'fd0b3aff647b715329f91c687e211fb38e446a8a9184c8d6af5e20c6ede55dfd'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








