$ErrorActionPreference = 'Stop';

$version = '144.0.3719.82'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1fc0f369-012e-406f-9f1e-fd4ea6f789ad/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d066e803-65ed-4d4c-9243-6e6b0d608c42/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6ED0F3F29E2564DB2200D4B485A5693011CA16B1B906907DE67316D4511529C2'
  checksumType  = 'sha256'
  checksum64    = 'F5AEAC420F480606D1DA34041867CD1E41AB1B5503CF75981AF6FFB06FFE2995'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








