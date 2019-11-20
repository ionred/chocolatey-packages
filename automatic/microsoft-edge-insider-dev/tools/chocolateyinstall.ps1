
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/53790945-e5d0-491d-a56f-7a60f2f6418a/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/ae4150f9-3cca-4936-be1e-4c3a1a1f00a2/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '1f95ddd3b0d5aa2ddce690e71245d1223a4155dda93908390f285a91693ba0a4'
  checksumType  = 'sha256'
  checksum64    = 'e49e22fc01c1d15dade9038bd42ce75abb79d0bec15438700106a72911ef577d'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








