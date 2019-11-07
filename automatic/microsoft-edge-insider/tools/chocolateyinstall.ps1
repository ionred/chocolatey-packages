
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/cf98e4a2-878c-4367-8fe1-8daed6c91943/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/6c575d09-8f46-4a63-b1b7-4e9cc6bf5e09/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '1ca6de43b62faaa81088c291ab4e9d9c3b593d9540fa4e9c0442914a93b1d52d'
  checksumType  = 'sha256'
  checksum64    = 'a823eadfac35d71899087b2a8b655cb83f549130b9b5d63ae9889d9f6de095fc'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








