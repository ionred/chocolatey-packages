$ErrorActionPreference = 'Stop';

$version = '130.0.2849.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/821051b4-21a2-4fd1-95d4-208fda62d449/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a2a64f6f-de74-4a79-a0d1-126f3d5781f8/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'F8081267E52183B6C710E7CD98DA54FF2666A6DC0BD65269258631C6D679E67B'
  checksumType  = 'sha256'
  checksum64    = '8699D8210A2C3270BC7EE1E34909588CE2E076CE271EAC3BD9E7A90503767013'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








