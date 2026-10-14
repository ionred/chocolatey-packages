$ErrorActionPreference = 'Stop';

$version = '156.0.4314.23'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/10b421d7-92ec-4775-8d1a-ad475a5036ea/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9f183c43-1511-43bb-871c-50727c809ce5/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '3EBAB1C2FF02A8A3C33A686533E26F365B7FAC868625707F76793BBC485C7DF1'
  checksumType  = 'sha256'
  checksum64    = '732472D864D0C480320E495088B14008DD838F87DF76B4EACB3E16BB0EE0A7A6'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








