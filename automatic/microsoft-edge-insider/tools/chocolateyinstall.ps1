$ErrorActionPreference = 'Stop';

$version = '155.0.4283.24'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/67e6fc56-6d8c-41fb-a47d-01a0fae5dcea/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c829b2ab-21b0-44e1-9088-e4c0a4a99e55/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'C0053F5646837F83FEADA47A92C65013D20079733F4829FE690C3BBD902812BF'
  checksumType  = 'sha256'
  checksum64    = 'C54F9687E31EFB3FB79F64D5FEFF231CA3E170CE37E43E823BD96A047B649977'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








