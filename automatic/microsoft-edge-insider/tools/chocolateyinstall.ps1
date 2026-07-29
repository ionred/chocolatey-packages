$ErrorActionPreference = 'Stop';

$version = '151.0.4129.50'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/bafa5860-c3e2-43a5-a81a-d5f30fc59d2a/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ccaa1377-5e09-410c-9f31-be5c4bcb47d4/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'D9F46528F9EA145CD3D2C00E435A3FE5154EDE70B6182E0E1A1402D929BE8A5B'
  checksumType  = 'sha256'
  checksum64    = '83824C7835BD001A57E986BB5A1BD625B8616AFD9109FE2A9C7FFBD5E41E6D62'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








