$ErrorActionPreference = 'Stop';

$version = '147.0.3912.55'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ef03e8e9-88dc-4231-91d4-54b0c7ad3641/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/75a24ba2-64e7-4b4e-87a1-f3ce3262446f/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '86FDDFB53F1DFEFDF54AADF0EE7FBDFD7F2FF075F71382797DB236C2DF906722'
  checksumType  = 'sha256'
  checksum64    = 'FBD5399EC7E751C7920154B487C5DB9BD738F5C5253B0E1DD4E99B0E20821A39'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








