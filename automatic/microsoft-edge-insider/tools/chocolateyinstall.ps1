
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a225c96f-e6b4-4c1e-b042-c3464d5a4b98/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1e3be8bb-e605-4f7d-9271-ac9f26c1f4e9/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'f4fd3338e6e4ab98e91c08986723ce01d29940271ade8ff7c6ec616daccfa83f'
  checksumType  = 'sha256'
  checksum64    = '03fa6b87e3c2a8337fd3ff4a9abb15dc482870a1ae9d2629145ad1083acd7172'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








