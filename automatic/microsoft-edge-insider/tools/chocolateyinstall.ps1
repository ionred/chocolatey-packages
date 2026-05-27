$ErrorActionPreference = 'Stop';

$version = '149.0.4022.33'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/77650349-d8be-4e1d-89a5-1b8d5ebf1bee/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/17b286e9-a690-4949-8c8d-6247f01e0444/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '23E85AAB23797C97725B6B8EBF97E52955B184E3390C6AE4BA9CE3A8ACD59F72'
  checksumType  = 'sha256'
  checksum64    = '29E9DDB9E8F0507E842F0CD4B67564DEDD7F07238E18939AE915DEE270E1C857'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








