$ErrorActionPreference = 'Stop';

$version = '138.0.3351.14'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5b844b18-31a2-40d4-b503-fa00e5c99080/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/73cca697-81cd-460d-9af7-dbfc5ade6298/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '49317C4F8ED76F3BA4772C159027ACCB6CD29E83755BC36849F4CC1E764EE392'
  checksumType  = 'sha256'
  checksum64    = 'C2D43469281B95FBEFBA5D3D035B945E364F7A51FE9E6B76CA07DF0E2DBC02F6'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








