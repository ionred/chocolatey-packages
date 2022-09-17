
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b5b29dc1-0643-4579-83a8-b69d07d20f5e/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/26e709b8-7d5f-443b-9d7a-bf12d9a13a7d/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '45b613e53dc344bc44ff21058b5bb488561ec7bec8621cc84b4eadecdf3135b2'
  checksumType  = 'sha256'
  checksum64    = 'db12cbbb0fa7569a9e1e02986dcf0e00f12abf783eb6e612abaedac5f7924daf'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








