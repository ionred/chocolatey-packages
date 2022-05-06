
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cfa9aca3-181d-4df8-8c7a-5c7a473afa52/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/174ce224-cbd6-4d6c-9997-5b4e8a24ccc9/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '260986dce357b20a687e59099ff77b31fcbcdda78ab1759ae10fe5c4386f1626'
  checksumType  = 'sha256'
  checksum64    = 'b6104c5de316da3a6b8e3a5b1148c111a5582f61b3c5c93de67123adcfaac885'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








