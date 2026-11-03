$ErrorActionPreference = 'Stop';

$version = '157.0.4341.36'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9b91a0c0-3854-4321-b8d5-2634b0328fc6/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2b12aac8-3cb7-4ce4-8b5b-5f7af7609d3b/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '85A46A9D0CB8699665B596AB7B842033F7BF894F3A3C2DFAAF03914D9A155ABB'
  checksumType  = 'sha256'
  checksum64    = '2DAFB451953BAD6709B7FDB149025FB2DB122FB8151EF7A333E311477FA874C2'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








