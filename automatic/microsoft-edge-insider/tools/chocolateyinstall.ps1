$ErrorActionPreference = 'Stop';

$version = '127.0.2651.49'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1f4c6999-8b43-4deb-8f33-f49f094d1fe4/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7337a8ad-c600-4e0f-afae-7ab127d35cf0/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '8567A94428F4A866FA5230F1615AB6FFA0C632333EB81CCD4EBA209E6D882B13'
  checksumType  = 'sha256'
  checksum64    = '957A440611A98068965616FB3BA110619FBB0BC3CD1529EAC0874AB9CA716211'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








