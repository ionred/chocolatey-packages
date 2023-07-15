
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/264e16d6-14aa-45f2-9588-89884d691b26/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fdd6921a-582e-495e-a212-2a8ea8081d60/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '5d5f4537dc6fe9f2b60306e3f2520e171cee1eaf0aa84a393f6cd4ebeb9bd6ec'
  checksumType  = 'sha256'
  checksum64    = '9c2591a2e4ac3c528dc4b3774492f9d3b855b4cf1bce2642a22a622362243f54'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








