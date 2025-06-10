$ErrorActionPreference = 'Stop';

$version = '138.0.3351.21'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/61896d7a-3cc3-4f91-a991-a25fb6e68ef9/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/72dff670-0595-4a13-a2ad-17ca26c4fff6/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '9644295AE57433E230A9ACF2C84942F77221ACF36EAC3C1BCCFA09159223028A'
  checksumType  = 'sha256'
  checksum64    = '6BA6D73B61A145C31EBCBAF0953A14BA54E8F644625EE7ACACAE03DD5E52668B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








