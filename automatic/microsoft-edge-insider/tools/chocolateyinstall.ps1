$ErrorActionPreference = 'Stop';

$version = '130.0.2849.52'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8d6ab79d-ddc3-4e95-ad2c-96c4b9f9231f/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/271c27b8-c111-43c1-93fa-360672097205/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '7AFFA54D27094484947E792A45AE85825448E58A64DF1D57F8F52F4540474712'
  checksumType  = 'sha256'
  checksum64    = 'B7862A76656CD9B11F0F9C56EBBE8FCC9D8F8398E3D7A6F7B43710120FD1BE37'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








