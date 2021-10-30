
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d625f53b-558e-4a40-8b99-b35ebcde0698/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d7dce724-2e61-4949-a52c-c4ef4e08a1f8/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'c900387b5b0c4e7cd2b41d42a02bf0b47ba3551b32518c355862ee647b8f66be'
  checksumType  = 'sha256'
  checksum64    = 'a4bbefca10e8616b8baafd9865b88ebc2eaebbce96ad10333b576dbeaa7f2b6a'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








