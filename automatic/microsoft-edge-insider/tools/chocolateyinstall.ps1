$ErrorActionPreference = 'Stop';

$version = '148.0.3967.42'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8dd2bec9-b496-4d9d-b802-2b243063a38d/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/bc1a21e4-b933-4d7e-a4ea-9e5f1a0343bc/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6300DA0894059A566D57FFC2EBE6B2036612F30669D422B02D8ED8E6FDF00198'
  checksumType  = 'sha256'
  checksum64    = 'ED9AF92431D18625FAA22A2361E628B2268E778763848771C8F9EA8BFEE97BD5'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








