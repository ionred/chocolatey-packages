$ErrorActionPreference = 'Stop';

$version = '145.0.3800.53'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/44c3a6d0-8939-4d03-a41c-09d6f7665c16/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5a35f3d6-2b60-4725-84e0-f405aebf4f34/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'CE5A2AA871B60EF9D9BD561A53F4EE7A16AA668A0A9995D07ECA97D2F48569A5'
  checksumType  = 'sha256'
  checksum64    = 'E80680B2644931ABE1F97F08C430009B98F8AF8D203049A9159F877EBB629EC2'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








