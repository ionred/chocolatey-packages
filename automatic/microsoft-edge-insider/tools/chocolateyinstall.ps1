$ErrorActionPreference = 'Stop';

$version = '132.0.2957.26'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9a849dd4-199e-4e34-9149-8e02ef8f4ca1/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cd2ccce9-6ffd-4886-87fb-7c4818e1a2c8/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6F55AC09A4746411F78B11B95EB4DBFB8A96C5A70334E4FFA4BEF5CFC0704DF1'
  checksumType  = 'sha256'
  checksum64    = 'B582A3FD5C50CA5F7345AC7D75763C895635D6A259589E7D19F5C896F4A58516'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








