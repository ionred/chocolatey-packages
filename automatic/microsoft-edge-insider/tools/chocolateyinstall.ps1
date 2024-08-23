$ErrorActionPreference = 'Stop';

$version = '128.0.2739.42'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/17dd7b6f-7941-4270-a30b-55e48c3234ec/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/04718271-7c8c-41ea-9fd9-48ced90af811/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '18B069B998E127184B96A5B5D1CA9E6C2FA7DAE99035A39D980B9FE5E47FF492'
  checksumType  = 'sha256'
  checksum64    = '558B7FD4208FBCFCD27EA4516938D7E8E8CE9ABB3204F469C7B0397CE5FE4DAC'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








