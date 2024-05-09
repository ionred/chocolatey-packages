$ErrorActionPreference = 'Stop';

$version = '126.0.2566.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f438dc34-5644-4fb7-9d17-cefcf3096ec5/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a8189409-2554-48c8-9147-1c4c83086314/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '40504C09500D942D4000BE30FE3226A8F32C3B3D6B2B013B4B2E7FC1CC4C421F'
  checksumType  = 'sha256'
  checksum64    = '2B29808E9AF572596B5365BC0D330EDF7B5FAF4822A28641C7E1A1E59C730122'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








