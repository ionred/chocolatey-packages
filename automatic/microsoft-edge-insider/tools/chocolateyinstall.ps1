
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/82bb372e-4d8a-4e11-ab6e-edf724588f76/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/aa90878d-bcd1-4e15-b673-65fd596e3a7d/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '25ee7a6b6d9070df0e6a6c559ea178e2058afd4b80340cf9bfd766512b3fb5fb'
  checksumType  = 'sha256'
  checksum64    = '8ff9cdb0d62be714ec013f312f2e4279a4a13c83d539f391bf0f9eb00572d9ec'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








