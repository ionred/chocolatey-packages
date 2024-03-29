$ErrorActionPreference = 'Stop';

$version = '124.0.2478.10'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d89f75fb-0eba-4b94-ac9b-623cad3a26bf/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1a58bffa-637e-4576-898b-7e5c3f885173/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'A5A92C0FB462DED8878F8E201CA93C364134C0635B24825115D581A5C0E664AE'
  checksumType  = 'sha256'
  checksum64    = 'B33F11BDCE634CCAD2216EC81B452BC828CFEBDEC5049A43BC9B1BBC7DDB95B5'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








