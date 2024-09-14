$ErrorActionPreference = 'Stop';

$version = '129.0.2792.41'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a2371900-c455-48f7-b667-a9d1fb07c003/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7083b795-ddc4-400b-921b-daeaaabef673/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'A68C0D1F8AA63593C316A9510E2A65A03B15B4813CF9D9CCE8DEB11CFC84F80F'
  checksumType  = 'sha256'
  checksum64    = '92EB3E3FD344A98754655E72BE09041D219C4F633410E5DC7C26BA80785A610F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








