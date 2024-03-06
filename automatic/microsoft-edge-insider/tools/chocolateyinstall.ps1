$ErrorActionPreference = 'Stop';

$version = '123.0.2420.20'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1bb07cd7-a5ee-41d3-b8a3-eb140a550659/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3d935b6b-919a-4047-ab69-70b4251f1e25/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'F2EAB7CC3F73CFF892BDE4F2731A5DEE4E18F122EA6BBC6010118AAC48945615'
  checksumType  = 'sha256'
  checksum64    = 'FF65E76C24194B048712CDD86567DAF03173042EC7BED0AB27A1C32CBAD9564F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








