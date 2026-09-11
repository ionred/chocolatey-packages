$ErrorActionPreference = 'Stop';

$version = '154.0.4258.9'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2125eca3-2c3e-4b6e-b4e7-7309b1fee6c1/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/620df80e-e504-4c74-8e44-861bd74959b4/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '9C5A4F99356A0F8299335F3A086E980EA035BAA83B7EBEDFD2D6D5E01E622EA7'
  checksumType  = 'sha256'
  checksum64    = '1C3C0510FF1A72A383F02C1CCE207313CFECE2F5129339911ED5D12F8748AD3B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








