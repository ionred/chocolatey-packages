
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/185a5d6c-20fc-4e56-9e1e-f866555a0e92/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/50f2fc56-0cb4-4a1d-8469-1b7fb6567978/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '0601d1b33a4fc01b0e2dd271b0d143117ff3726cbf484f285a42e0db81c294a9'
  checksumType  = 'sha256'
  checksum64    = 'bb2eb7ef4e72d94036a48e0b21fbcb3247350ef29f6e14967ed5d492c083f980'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








