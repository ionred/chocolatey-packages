$ErrorActionPreference = 'Stop';

$version = '148.0.3967.54'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/28ea410a-1e07-4075-bc14-312b78e91083/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fa18e5ba-51f1-41f9-b742-3aa30f6fa018/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '821760261D93286EC67197BCEFD0875FF979EDAAAE4A0537E141F101DADF778E'
  checksumType  = 'sha256'
  checksum64    = '86560860B7E2B41D6E5315431EA3D52E9DB4291057E911CB7A5FDAD000163D6A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








