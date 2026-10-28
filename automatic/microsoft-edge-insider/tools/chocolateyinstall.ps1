$ErrorActionPreference = 'Stop';

$version = '157.0.4341.24'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/89c08c77-a845-48b2-ae71-01558274dfa0/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1d4c5901-d48a-45ba-9d99-88301b9778a2/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '37021944DBD8872B83EF5930337C270080335E2BE05882BF41E2F8DA8D6F8637'
  checksumType  = 'sha256'
  checksum64    = 'BC22403994925294B544E5083035BDBD1BA36A07A9815D6D5EE7535A14424926'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








