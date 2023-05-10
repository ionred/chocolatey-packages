
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/85c49a00-6b2f-48df-88de-929a77ddec4e/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5cf7511a-88e2-42ec-818a-117aa6e83a88/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '14d0dfe9f7b270c48a83e1f5c71018aa1c0490851c631138bdbdabc5d023f3ce'
  checksumType  = 'sha256'
  checksum64    = 'd22dd6442cb87fca9826781dddb8fdf7e9f0fab1c41c9a88f208770cf6ffe669'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








