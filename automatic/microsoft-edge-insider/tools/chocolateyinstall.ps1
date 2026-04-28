$ErrorActionPreference = 'Stop';

$version = '148.0.3967.34'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dddc6942-df4b-483e-a73d-fbdf0f53a611/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9b1cf1e2-f451-4590-9855-f9ce2117cb80/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '3CB9E4763F4FD366E2D543D3B897FDF5EF8CAA9B1B4892F5D1235BDEDED70030'
  checksumType  = 'sha256'
  checksum64    = '901782F7195C5ADF6C2D3349728A04B32643CA71582BB62111267C85CC2499D3'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








