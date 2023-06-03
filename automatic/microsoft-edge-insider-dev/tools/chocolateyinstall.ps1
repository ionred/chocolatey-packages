
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a0cbb45a-09aa-46e4-a4d2-ca683ec34816/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3ad37ca4-7f5e-4615-833f-ffca0717cba0/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '28c6a6bd8e96ad0d47c66c3607e95d742bef01b380d47901133c25e948b55d72'
  checksumType  = 'sha256'
  checksum64    = '3db277230c641e1f5ad6ca44ba776134e7d553b054b79e2fdfdf413312b9aaf6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








