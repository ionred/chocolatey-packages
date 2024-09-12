$ErrorActionPreference = 'Stop';

$version = '130.0.2821.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/55ef2433-3695-494a-be6c-debd9b4eb7ee/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4be2dac4-4c33-4860-aa35-c47655c85551/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'B44068C7FC7692D90A70628128C9B037B589EBA4C5EAE051FDB6FE74367DCD22'
  checksumType  = 'sha256'
  checksum64    = '63DB5F52A94E4CFF2220041BD6FA5517EC221CB30F7BBA03695D61C7A13C95B3'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








