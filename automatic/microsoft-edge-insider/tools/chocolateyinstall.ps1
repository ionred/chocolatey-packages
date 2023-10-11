
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7a45c52f-aaba-4342-9634-39d774ce1055/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9bbf9dec-a186-4950-a2d9-4631ed7a86f9/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '3dd3b68d55fa335ba422e94cdf244c9eff8f740b1ae227da084c7ad13ac22363'
  checksumType  = 'sha256'
  checksum64    = '63c4b205969b8ee7b482ac5396eb0bbc8b4a9728da4492aebb93fb078019d7c9'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








