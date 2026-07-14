$ErrorActionPreference = 'Stop';

$version = '151.0.4129.21'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5626925f-da62-4881-aef9-a280d70f2d38/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1b7f7aec-2bf7-493d-81e6-bc10b449a348/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6BB32FF3B8DB933CF7CA4BC726F2B6FE0385FD227702A84D53A95B59C68391D3'
  checksumType  = 'sha256'
  checksum64    = 'F0510D77676A59A851EFEFA2920F9C94A38C776F039BCEF855BADCDAC87F3A52'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








