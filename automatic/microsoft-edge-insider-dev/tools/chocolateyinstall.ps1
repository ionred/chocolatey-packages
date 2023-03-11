
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f9b93c3d-b537-4cc2-b159-a54fd7bd9d77/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a876e3d4-a756-4e8a-8cf3-5d6690631f18/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '98aaf8dadda20455c971a3d7ba6276a3fcdee1215adeb961a8a169c0ef8e07ee'
  checksumType  = 'sha256'
  checksum64    = '0fa45eb563628a1b19e86009293fef1680066e1be6e09d108606ea3982b74d33'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








