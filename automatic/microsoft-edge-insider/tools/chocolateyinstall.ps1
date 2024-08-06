$ErrorActionPreference = 'Stop';

$version = '128.0.2739.9'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2357144f-4897-4ffd-9292-e9f96a860a55/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a8360cec-3cdf-4b59-848b-93a47ae61324/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'ED16770A18875361A4C50FB5B9E5B2CEAA71EC92F62DE69B3B895CE73D3D3EE2'
  checksumType  = 'sha256'
  checksum64    = 'CE2E495890262B3865DE396C54B44BDAC39449E66EEB0FAC38AD1F42D8B42BDA'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








