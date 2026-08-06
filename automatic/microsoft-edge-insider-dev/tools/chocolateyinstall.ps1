$ErrorActionPreference = 'Stop';

$version = '152.0.4191.7'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5ec693d1-7b6a-4254-82c8-b56e500d719d/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0f7ec9ad-4ea3-4188-921e-12d1c2bc7887/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '1DA18D414A8A39A1ABF626B523A4942048D03333B0AB22E7FBE31420F2E9B202'
  checksumType  = 'sha256'
  checksum64    = '2A40F60E4602DEEEE11B92D38DFA31CE799028D490DA81DFCA3BF63CC1F070CF'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








