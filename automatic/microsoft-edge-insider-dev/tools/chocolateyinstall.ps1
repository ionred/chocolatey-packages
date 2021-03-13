
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2c6645b5-ba6d-4a55-a0fd-07262cb88f74/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/15c9e32b-9f91-400d-94f6-8abb54524a13/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '097fc2a86d165ec6f75c5b74e6b41ac8f928d527c4d4fdd3b713291774107dc1'
  checksumType  = 'sha256'
  checksum64    = '1e42f9acaaaf279549c30842a48f99c88d38faebdff404bdc21dc2e33c171f9e'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








