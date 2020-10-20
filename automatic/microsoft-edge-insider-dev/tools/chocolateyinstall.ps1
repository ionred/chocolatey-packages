
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0612162d-3b8d-4870-8f6c-ec05014c190c/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6da3b57a-ac35-4c5f-a4f1-6ff1c5e7ba30/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'aaba9955cb77e4beb41c0476f6cd0f0c1358ff0c0529851c5e3e7341d12942c9'
  checksumType  = 'sha256'
  checksum64    = 'bcbb70efdb3e16857f5513c8e669d41eb5ae9ef7ed39f3f5cc4cac61e2d254a7'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








