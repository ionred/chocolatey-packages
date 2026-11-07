$ErrorActionPreference = 'Stop';

$version = '158.0.4370.7'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/eb2be9b0-c245-4e71-996b-e4a59db10636/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/787ded00-88e0-458c-ad35-3c4eb761f31c/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '001DB24CC024E03F17D125F4AEEB549AFF286F5B373534A7E724AA16BEF3D93D'
  checksumType  = 'sha256'
  checksum64    = '5520BB4022DBDBE5C42B3F0FD7B4803E66956260A9EC8826FC7303111FB896C3'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








