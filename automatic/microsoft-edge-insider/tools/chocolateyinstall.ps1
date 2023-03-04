
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8218c15e-4b05-44e0-a004-242e0e375c99/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9396f36c-f6f1-45b9-84a8-78f86dadbc20/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'd603be1e5870e9a03f70c3e7350b7db4fdaeae95cbfdb8797e694c3dc02275d4'
  checksumType  = 'sha256'
  checksum64    = 'dd805e1b7d00be1b398f063c9dd3488d06ad90b4b7f356dcda0b54c8e4d06fc8'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








