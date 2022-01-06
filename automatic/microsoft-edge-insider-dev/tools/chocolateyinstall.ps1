
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a9bb2690-7cb0-4fb0-a3cd-0eb4ed833d26/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7d8294c8-5fc7-4818-8b02-738bd324bf6e/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '0200bd1f3e189c6cb5d55aee0ceb4eea589605abf79f3d50e2c39c4e71825f09'
  checksumType  = 'sha256'
  checksum64    = '00338d9e4515b01098c1b51fc40174a302c8dbe699fff4aa0824f90adc41a2bd'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








