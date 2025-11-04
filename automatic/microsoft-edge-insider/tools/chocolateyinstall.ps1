$ErrorActionPreference = 'Stop';

$version = '142.0.3595.53'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a1fd9620-3b89-4864-a4df-9487bc38bf5c/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/168ea06a-f3e3-4d53-b790-d4a9abd19f61/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6D5E3032ACA9F49C91720370124D891DE527A6DBEC4BF77A3227988CB8EDB656'
  checksumType  = 'sha256'
  checksum64    = '170DF797E44C2885A0757639C17CBC87E7095367B8098E0B1C44CF2B7F995FD9'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








