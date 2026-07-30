$ErrorActionPreference = 'Stop';

$version = '151.0.4129.54'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/80ba2fcc-8ce6-4612-bbee-7d99ff41a648/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5cf368bf-3175-4d23-a360-c6fb1daa56f8/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '4675C4C5544FE0D3B136C35C3E58248573CEE108F28E31C6E16329589839C4D9'
  checksumType  = 'sha256'
  checksum64    = '7D2CAA4F01C90FD14D11D1D2F6CBA4CDA37F38D1639BC5D169ADC643F5F6B29C'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








