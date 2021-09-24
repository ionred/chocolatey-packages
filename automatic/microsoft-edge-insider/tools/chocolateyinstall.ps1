
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a2baa81c-8a98-4711-8401-f58f7aaaa385/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d6499e88-dc65-443a-bff4-b2d750a6cb17/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '90e96e93be75391907fe18a8314c7847812165e286c2d82b767ab47ffd1ba12d'
  checksumType  = 'sha256'
  checksum64    = '3465199a94fad1bd0d4c5d10ffe6dcbf9f5788ed6bf77a896f6c76e7d0ef9e74'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








