
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a7eb6d1c-fcc5-4c63-a49f-bc5ac6981326/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6724d44b-fbd8-43ca-95ec-e86811d2ed9f/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '1f9087885ee4fe0e1b6ce7f8e99b6c34e09703925e7c5ee9257c67b13318c393'
  checksumType  = 'sha256'
  checksum64    = '13bbd1ce8b180dbc9cb158a8ec0ee574b79406a93f95662d016951a29d632aff'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








