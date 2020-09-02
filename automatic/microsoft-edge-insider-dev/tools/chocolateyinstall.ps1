
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/04c622c4-1637-4400-bd92-3d15e4d92d66/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/90fb4f35-6e47-4e81-87bb-da7b1777dddd/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '6368fc43a62c99148915f7e99a2b74e0ffb4e862f51035bb0d9c85db8edbcf66'
  checksumType  = 'sha256'
  checksum64    = '9eb772ad2d601a4d8c5c8e03a379a7c5d2b57f782f66672f9e8d561840101afe'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








