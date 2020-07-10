
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/3479ee3a-7b14-4d61-8b4f-e4ea0f459d81/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/1859f061-2758-4761-9bf6-f714e1b56c04/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '87ab2673f9a6430860c13e7ea8831d35c288aa281bbc9d08aa97fc128fa0fc1e'
  checksumType  = 'sha256'
  checksum64    = '339a2dae81903d173d17a76eab5d5f9023cb936e965900b86493e65e3d9dd4e1'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








