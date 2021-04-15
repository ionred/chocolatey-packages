
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/742140bc-32dd-429f-bb07-9b7b118d4ab0/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/de4aefe7-c803-4662-9e78-62def0f0c874/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '3af7c2cb13e556dba627dbee4431f2c954515c7f62a68b691f64af1d81c61ff0'
  checksumType  = 'sha256'
  checksum64    = 'cb9afeea256f31ece3c4b3e559ddb6b2a72bf48b4aace0ab6e0ecd409669fcd8'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








