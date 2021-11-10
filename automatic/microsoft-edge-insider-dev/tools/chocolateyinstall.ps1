
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f0dd6d56-8f20-4e8a-8acf-19628e1ce6c2/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/df6f767a-4ea5-4eae-a519-70f2a885c8d9/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'f111ddbc6ec20354a5b0704d06cd9cff9c2d18c968248115baa19cc3df3d3e9a'
  checksumType  = 'sha256'
  checksum64    = '0f3e5d0ad149bf662866ae79f354c1d19702251e1cc8a65dc67f972b0392ad4f'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








