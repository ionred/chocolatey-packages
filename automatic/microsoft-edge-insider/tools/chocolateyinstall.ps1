
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/90aa133b-ebe7-4a7a-8f01-c236d97aef1f/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7df2200c-01eb-4086-8b18-784b6c910a2d/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '96ca78bec17f7b955b47cce66818bf43c1bf5a52769aa83addd84b02dcff4f1a'
  checksumType  = 'sha256'
  checksum64    = 'a65381f44f72dc2209ad7c2fb77a1535bbf3291d83ad3050f1a61dcaacb5e156'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








