$ErrorActionPreference = 'Stop';

$version = '129.0.2792.21'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2450541e-fb6e-4375-9db7-39eabf55907c/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e66ad919-90fa-442e-959c-e694f8ed6fdb/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '5E71FF429F0D1F54108B454231630C59B3640B4B84386EA3A8F702C319417E42'
  checksumType  = 'sha256'
  checksum64    = '60A843DE8AE951F853B3527053F046644BE4F6F8AFE1ADB8747C12CF0B6CC194'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








