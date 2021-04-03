
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f720914a-4d5a-4a05-a613-9e4d2fde2c4f/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/48df53b1-88d3-4ee1-9da0-1f9ac8ad7683/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '18e548d9b0db6900d06294464aab5a672d9665747278b546ece9a1a44d1ba6e1'
  checksumType  = 'sha256'
  checksum64    = '2625f5bed53da9ba38e0feedeb77298ab500d5713949e2b9bd749002efc7d0d7'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








