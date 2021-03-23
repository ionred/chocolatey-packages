
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7c6f92cc-1508-41f4-81a8-1cc0bdcf9f2e/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/634f3921-c2b6-42e5-952a-75ebea6f938b/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '0e43470abaf8b1f15d27192c7f954d1e5cbb372ba6a0b633e96ac2912677e1cc'
  checksumType  = 'sha256'
  checksum64    = '7e6bf91865b23db67d5efafd7cbe5f7e716183455fd8182fa808e1e75d2bc517'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








