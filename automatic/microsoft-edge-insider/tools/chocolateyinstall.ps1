$ErrorActionPreference = 'Stop';

$version = '148.0.3967.52'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5c2a36b8-7a51-4c6f-bb4c-29dbe23a4b48/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/665a15f2-c826-4174-a994-54f5e8cb040a/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '129CEDB2B46B058C5C3B86C4F9E14C62DDD6A873D2BD9B64ACF31E6C75D4BB39'
  checksumType  = 'sha256'
  checksum64    = 'F96182F2A3DE5674A6564BB39604E5AA675B7A776F0B80DD9F75885D95DD9009'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








