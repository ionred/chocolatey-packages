$ErrorActionPreference = 'Stop';

$version = '158.0.4370.21'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/59094d1c-4071-432e-845b-ed758cf233da/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d9cf847e-c117-4fc8-a7a3-ca159499de10/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '7F14120C867F58F40D7D3021DCEC4161454738A8D67EB227F467BC8FE8293BCC'
  checksumType  = 'sha256'
  checksum64    = '33622AA4BF89DDD9DB8986E0DF55D7678C81D35E92D067D5AB7FDD98FBDF73CB'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








