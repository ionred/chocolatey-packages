
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/3676b4e2-79e9-450e-b25b-b4ab30d2edec/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/9ebef192-da18-4843-b13c-5217b72a3ed8/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '9815834febcafbcffe3bc6cb23f121388b6a181426e70ba82f462b493b1e2492'
  checksumType  = 'sha256'
  checksum64    = '8eadbd051efbf18a684b9e2e5392c3900914a36ec505135e8a41b41edc997aab'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








