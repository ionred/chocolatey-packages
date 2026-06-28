$ErrorActionPreference = 'Stop';

$version = '150.0.4078.38'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c242ed91-6985-4a67-a28c-afc11dc0adf9/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/edd020ee-8b7e-4907-ad7e-9418b0a5f4e0/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '56C37D2CAB3FBB190A869F3A2F8940F562E4CF28D0D61AC7558263036666EB54'
  checksumType  = 'sha256'
  checksum64    = '73B9585DA4C2B20BAF9331702052A54C6DB909F33F3DAA963D0A0FACAA90115A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








