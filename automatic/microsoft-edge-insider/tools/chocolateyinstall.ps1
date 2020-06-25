
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/93cbe212-f6fa-478d-bb98-40425b0f8288/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/1151c992-6aed-45c7-934e-c08f7664f9ad/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '7fd41b74245baae4e848b147a4db0f426f426db488b35a9f1784c83bfd7b54f8'
  checksumType  = 'sha256'
  checksum64    = 'aa6b8849aaa4169bc4ab4e1e515e1ff82fc12c49e73c9d788c9cfc05989a4ae7'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








