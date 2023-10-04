
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/51fb8122-4b9c-4e0e-a6a9-f0c1ea6267f7/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b5786f91-b0e5-4dda-9a52-cdc1baa738cc/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '8b98f88d2ebace79bf6007d332aa44fb159ba10b1bf344d0ea6632eb4d5f33db'
  checksumType  = 'sha256'
  checksum64    = 'ee05bf08664b077d5132b6d312a30a22dfad8052ff19c0dc9f8eb27e9a4c7c52'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








