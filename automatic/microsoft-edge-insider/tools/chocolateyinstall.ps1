$ErrorActionPreference = 'Stop';

$version = '150.0.4078.5'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/de5fd374-4b17-4995-a58a-15d21e6cac8b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/33eecddc-cd18-4d56-be3c-b5ee982138ac/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'EB35EE96961C94A4B0832F6564F97BA58D8ED214D99835D5A3E60B93749DB5E9'
  checksumType  = 'sha256'
  checksum64    = '6EFA49EE3028998593858FC2806F2C996C9F4E63E47562B9AE7F3D8FBA7931EE'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








