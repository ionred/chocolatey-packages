$ErrorActionPreference = 'Stop';

$version = '155.0.4283.33'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d2405606-2281-4372-8354-f0dbb050b174/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f419956f-831d-445d-9809-8fef8fc7996e/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '247CC7A6510FF035F33330311E3022B4834E489FFBDEDE4F43650C50F6A63A66'
  checksumType  = 'sha256'
  checksum64    = '64AC1AF86434C7AC7BBC052CA25AF9F875B6FC832362F0741CA365D520091FE0'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








