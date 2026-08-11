$ErrorActionPreference = 'Stop';

$version = '152.0.4191.19'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/879e160b-8a40-4cd0-b720-8b6f682eda5e/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9451ccba-b184-4da0-b4d3-7e6d0145d002/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '7D647FE7C21D11B8D285654FE9C97DC73CF6E1F8CABB1CB5590B79B56A510758'
  checksumType  = 'sha256'
  checksum64    = '8861BD307267D2AD1D937B3C0916512BA5C5870455EB3C9708F4FDD3B98FCFD0'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








