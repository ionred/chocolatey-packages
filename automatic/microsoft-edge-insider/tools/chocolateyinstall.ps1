$ErrorActionPreference = 'Stop';

$version = '145.0.3800.36'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9dfa39a3-21a3-46f4-92e0-3634f769e18f/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b78f93da-e632-4ff4-aa0f-156b65e0b4f3/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'DE08B0CF529B93ED10A7FCEB5FE85A661F9406383B8028F8821B09B74D064882'
  checksumType  = 'sha256'
  checksum64    = '32759C5A3511D6CF0732A18540FB9A124EA611465F4304196E06C4509E5F7757'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








