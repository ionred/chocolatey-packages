$ErrorActionPreference = 'Stop';

$version = '143.0.3650.37'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8939bf05-8f85-4423-8e86-eca7549d188b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ad4c2646-3ef0-4f07-a880-aec94e34405e/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '7B04149685472B12C077D6EE2A5B765762F6537D1BBE83685A8A4715255BA319'
  checksumType  = 'sha256'
  checksum64    = '75ECC37F16E83C968CA8B93B6902F9B9BFA37986842E158EFA834068C52EC42D'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








