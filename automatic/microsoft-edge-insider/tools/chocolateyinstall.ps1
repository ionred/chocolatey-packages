$ErrorActionPreference = 'Stop';

$version = '152.0.4191.41'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a661e76c-fda3-422a-af57-df5a9ea5bf22/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/004e0953-af15-4efa-a683-9d65bfd6a53f/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'AB239A1C985B16A45E44F5AA70630B25B7D435393DC1E9575AB69033F74F7644'
  checksumType  = 'sha256'
  checksum64    = '74F5E7E0AE3D63965713BBA740E4A1E52BB7B21BE597395FEDEEE87E42253D1B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








