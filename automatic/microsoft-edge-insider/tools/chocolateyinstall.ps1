
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/c692f2c7-35a9-41b0-9d87-643aadfe797d/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/2e77c659-4962-4d30-b3fb-535f5e64ff13/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '3051c8c95149fc92149edd9ae21b48677905499e85108a132c45cbcdbc68279f'
  checksumType  = 'sha256'
  checksum64    = '96e46b7b9167ce4233afdbddbec9125078517d4cbc35f63f47915a071823ccdd'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








