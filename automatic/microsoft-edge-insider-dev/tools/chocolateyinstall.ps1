
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/21d13ac4-cd01-4e5f-a395-1bd998f9b970/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/cfdbf979-ed38-4d0a-abbc-4a00992bf5a0/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '8a4059bb22f261a2459cbb614df668214952a4561a9fc5beb6394efa2020c374'
  checksumType  = 'sha256'
  checksum64    = '949f9c0195ebc42108a9fda2bbe7a83573ceda680b840cd23b2ab288a3c4f722'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








