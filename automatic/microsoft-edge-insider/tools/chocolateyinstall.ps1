$ErrorActionPreference = 'Stop';

$version = '147.0.3912.31'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/221abc96-9a5d-41a2-9adb-59909d054045/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/64612bea-adf9-4b76-8ad4-119ceb025573/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '5A3A1F9A95483CC8B8F0AA286782C44E1F6031231BDBEAAF55BA72A216098B65'
  checksumType  = 'sha256'
  checksum64    = 'D70F378EFE6D896F00EB8751B8B234F42B54D1960979B7DCE6ED3C34290486DE'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








