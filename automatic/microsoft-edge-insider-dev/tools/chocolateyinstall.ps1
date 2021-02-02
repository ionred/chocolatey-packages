
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7ca3e657-bb6e-4d0f-a2c2-125df0b62e2e/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d1590902-86d4-4fd7-b73b-d25c32f2c0b8/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '49306090bd3bc5316bdbbc1f7df9226bd0ee0bdc7c8bad2262fa6f64064e05bb'
  checksumType  = 'sha256'
  checksum64    = '6b8977c7abcac7aae6d0152e224aceb81dc0fee80e856324cb40932bab68e45e'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








