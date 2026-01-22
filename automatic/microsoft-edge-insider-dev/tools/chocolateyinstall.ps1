$ErrorActionPreference = 'Stop';

$version = '145.0.3800.10'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8261170a-0603-4c84-a839-ca5ccca24b6d/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ee613c0a-b7a7-48a8-a4d7-5ff1023c65d6/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '4697F48F6E5DF780E3B91BFA3F64BFF749C44E63026B8B43E51E0A78E1D9AF44'
  checksumType  = 'sha256'
  checksum64    = '0D62061F725C28A42090816D945F87F53FD3780346E46768925652152D28C707'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








