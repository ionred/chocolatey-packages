$ErrorActionPreference = 'Stop';

$version = '143.0.3650.19'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b532854a-4023-41a7-8c12-bb64b2e88560/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6753607e-ccc8-46f4-abdd-95662d75941c/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '0774F03DB265514EC2EB493D4F2C7735D1B7507C04338BBA54CFC7B804B1BB79'
  checksumType  = 'sha256'
  checksum64    = '60F74C138C656ED9CE8C1818BEF1EA8B16B662C0329915A9B24291CB179AF7DE'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








