$ErrorActionPreference = 'Stop';

$version = '149.0.4022.8'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/643de608-7f86-4ed2-94a2-182155b5db01/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b9e768e3-dfa4-49be-b988-026630ec39a0/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '4D27C28795BBEA337350AB9FC6E7249251EC8360047A49E8E9F0C6A2222548C1'
  checksumType  = 'sha256'
  checksum64    = '92FE1D36872E4675C10BD9BA1E1FEE61270431B605598E4384B0BDCA21B3C73A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








