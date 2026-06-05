$ErrorActionPreference = 'Stop';

$version = '149.0.4022.52'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/673cd299-bad7-48f3-b909-eda1255b9d56/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7f5c73a5-846b-49ed-b909-bd07a67fe286/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '3591BAA3C84DAD8FFCFDDA3B8C3BC1E4E4476EBCD2CEF4643115BCC78FFC3A1C'
  checksumType  = 'sha256'
  checksum64    = 'FA3AB92DB3CC53D8F8E426965B30AB6C23B491556EB8BD89FB3FA633D6782065'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








