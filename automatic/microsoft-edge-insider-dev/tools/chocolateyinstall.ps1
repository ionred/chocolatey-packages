$ErrorActionPreference = 'Stop';

$version = '124.0.2464.2'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b1a70d63-7881-49a4-ac73-7e6f2abb9157/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6bc31bd4-21e3-46ce-a151-95f02b6cb022/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '4753F06C62A7A6078D3AFF70518BC2AB19920402028949B8A48D22762CD4306C'
  checksumType  = 'sha256'
  checksum64    = '045509C8DCE74D0B10CEA9B82BE823FA03EEFF692124B0526F194114B35D8F49'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








