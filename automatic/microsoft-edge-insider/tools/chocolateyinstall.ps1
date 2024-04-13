$ErrorActionPreference = 'Stop';

$version = '124.0.2478.39'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/41e01eed-75c8-4382-b7ea-ba34866976c6/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/002e7a94-e89f-4981-8e85-dffc39deda5c/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'C93733CE2E5617F838EC8A3E93B9F6F61C9FB4453D889955527393CB0DC81E68'
  checksumType  = 'sha256'
  checksum64    = '69C272EE464AF6418AA0AA827279E7441160AF8DAC9EED2598712991AC42804C'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








