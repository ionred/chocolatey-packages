$ErrorActionPreference = 'Stop';

$version = '129.0.2792.31'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/aba70ec3-0c3b-4642-952c-eece1f929b45/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/77cd2159-89b8-421b-a8ff-8ee19abdf4e4/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '2F662C7FDED4EC44201F7B284ABDD206E16AAB29D533A920A6584A03599113CC'
  checksumType  = 'sha256'
  checksum64    = 'A1BE27B4967E4FA9BC090453A213FEC07BF916C7196B92C194F0758F7414F11C'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








