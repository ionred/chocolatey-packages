$ErrorActionPreference = 'Stop';

$version = '138.0.3351.14'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/231a8d7e-83be-4cab-9d0c-7ed6ef1c0a54/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c617f78f-ae8d-4014-a066-b849a4b122d1/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '11BC9F4B19D04AA04279C1933A6225E254A33E4CC98313CF8A3017A2B37C8B2A'
  checksumType  = 'sha256'
  checksum64    = '4BBCD9CADB2BE84F5978A29EC90ADBDD170AE57B3242B70728DEEB9CF49FB3B3'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








