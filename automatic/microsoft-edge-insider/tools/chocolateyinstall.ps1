
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/83ffe0e8-c9b6-4188-add8-7440089637a4/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3bbc32a4-7ba2-4455-b5b2-72d85d1fb8cc/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '19dc35bbc48c2a6bd14b285899e17ff9f0c84e9ad8dfa162bb39d393b7d0be4f'
  checksumType  = 'sha256'
  checksum64    = '54ee2e095fa4e3409caf53b684780b65ed37144c9d609d777e68557612a9ca43'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








