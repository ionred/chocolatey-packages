$ErrorActionPreference = 'Stop';

$version = '158.0.4370.16'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c5c3bd1a-e399-43c5-8f43-ef1af99ddcfd/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9b9028d0-78fb-4362-a21b-f510d9b96829/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '03E080A7AFFBEE48B6D8641ED5E20714501480ED6440D8B6BA5473EB3FCE1B07'
  checksumType  = 'sha256'
  checksum64    = '7E74E1FDECA8F2BAE7CBA70D2C9AC51188134A5DD83559C56821195EA4E615BD'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








