$ErrorActionPreference = 'Stop';

$version = '130.0.2849.35'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/37987286-e015-4ea3-8671-4677ce8838bf/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f82033d0-c544-4f3a-8bae-7849b3c2ae74/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '78A46E25C89639F9B505198E4187DD4AFE1BCD08D49FF8CBB097EA58006460B4'
  checksumType  = 'sha256'
  checksum64    = 'F550679464FEC8CF9FD6552BE26144217278A9906E04BA4AEE4EED2AE9D3E408'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








