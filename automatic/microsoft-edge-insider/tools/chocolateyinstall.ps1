$ErrorActionPreference = 'Stop';

$version = '151.0.4129.59'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/97022b5b-1edb-4a38-9594-e5eb2b9cdb92/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f4aefe5c-aff4-416c-8464-0ffa4a1db498/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '0BACF5FF511948DE2235D3932D4CB5B01F48F90FF183C089988C9904798F420D'
  checksumType  = 'sha256'
  checksum64    = '5A609A32F7DA8F8C07CD005F32B5474205DD6A23ADF83BA00973F738FBB9E716'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








