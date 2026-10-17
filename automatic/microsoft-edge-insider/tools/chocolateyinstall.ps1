$ErrorActionPreference = 'Stop';

$version = '156.0.4314.30'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f71e50d7-9d32-41fd-a20f-0b355617c40d/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7c18eadd-05c6-4590-b2af-d2e6c3af96d8/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '87075FF79882B8949080304916857A830CDE43EB7D98C4BB153A04656CFEA48A'
  checksumType  = 'sha256'
  checksum64    = '970CBEF8E56A9C949C59267CBBD55D854293BA0153DDD6D53FFD6757A23AEA5D'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








