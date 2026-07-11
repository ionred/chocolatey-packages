$ErrorActionPreference = 'Stop';

$version = '151.0.4129.15'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d8144afb-aab0-4ebf-bd41-eea2f0b72955/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9fa33f82-269f-4be2-965c-c9db7af018aa/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '1CD154FF4D9677C0BD48861C332A2F5F767ACFE6D50BB378F0DC2A04D3C34CAC'
  checksumType  = 'sha256'
  checksum64    = '1DA32ED2AF27DF2027DB5C2A488FFCFBE4400EEE08998AC6F3892C2FA27AAC28'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








