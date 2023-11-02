
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7d9c393e-0d07-41f1-a350-0ef3cd6487e3/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ca48b45a-3a9d-4bd3-a763-78c80dc255d0/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'f0b368c0f02d7ce5e5e1fbc0c1bc65a9c99e851a792115e247ca3020875410cf'
  checksumType  = 'sha256'
  checksum64    = 'e81821a49b46ba39ebd0b8abcd9c1f026e79395cee28f1d6e2a44acdfe6dd394'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








