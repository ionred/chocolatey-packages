$ErrorActionPreference = 'Stop';

$version = '151.0.4129.35'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/118f66be-1bc2-47aa-819d-8cd66f3b54e4/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ff303ca5-0517-4ff2-bb36-14047dc4b19c/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '46EF8FE8EAC16EE4D627B712DE053B79D15041F9D5495C240DA9A7F2F4F2FF1F'
  checksumType  = 'sha256'
  checksum64    = 'E893B0D73FDFDEACFABBF561329D4B4D188B05DBB1023FA217090A2A346FE73B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








