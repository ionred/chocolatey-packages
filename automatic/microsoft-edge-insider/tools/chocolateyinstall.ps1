
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/81fff54f-3019-4a53-9fde-6e4146684097/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/89e511fc-33dd-4869-b781-81b4264b3e1e/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '45dd9b385e4963e588237e2158d15c2b0c71aa2aa0a03666cb443a22a45f5b9c'
  checksumType  = 'sha256'
  checksum64    = '2af3ff9ff418c09c0ba28d61865cb604377fdb562f2b7c300a4285b3b52f6c53'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








