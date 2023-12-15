
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/58ca0f5b-1f31-4bf1-82d4-919699ef5b77/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0809eb75-3757-4afe-934c-6852d9195268/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'e4e20e83925766547d1f0cdd006654b0fba6b8cd9f18e875b770bf79c85c591f'
  checksumType  = 'sha256'
  checksum64    = 'd9183f0c2c9d9a58b9918b0dd0fc7b2b53d21280129d795e94c84567d0e1c92f'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








