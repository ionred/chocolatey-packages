
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4526f900-5d2f-47a4-afeb-9f664cbc26e5/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b48c4d99-1149-4c84-b8c6-592847f98b7d/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'c2a92911f5d2378fc357587664e789d806823efc1f19deb575ea82606291aabc'
  checksumType  = 'sha256'
  checksum64    = 'aa5aa4c5dfb7bfb264e7b001ee4d3899aadbe2c9725e1e4a7dd43b420e202577'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








