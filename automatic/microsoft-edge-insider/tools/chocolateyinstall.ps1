$ErrorActionPreference = 'Stop';

$version = '127.0.2651.15'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0eff67ff-4bfa-4c31-8393-a72bfefbf081/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/97892f86-9025-437d-98c8-ddc23baf7828/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'EC7258702682AF0C15AAA7ED0D16AF1A254BD4AB15DE358FAD672B360C198E29'
  checksumType  = 'sha256'
  checksum64    = '391BA17E494966E3E9EC48E4E336151461D24C251EA14A2996ADAAFEFCEBC32E'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








