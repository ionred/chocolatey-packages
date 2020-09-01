
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/7526acff-c28f-44c3-8662-be62fe0a4e65/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/ec2bcbd6-1506-4606-b69a-8aa7cd836795/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'ae77c225f0146db79c75e49c5d0886f5459d0c4576fe98b93ca4a316fbba385d'
  checksumType  = 'sha256'
  checksum64    = 'd559eced97e23a34745a01c5bd197b81f4ad2106724c16ed9b1c785b681d50f6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








