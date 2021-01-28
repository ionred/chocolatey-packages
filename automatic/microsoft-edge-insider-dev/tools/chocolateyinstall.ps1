
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dfc9106b-e844-4d6a-964d-fcec9b6cab29/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0c059431-7e0f-4591-8236-9d491e0451fa/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'cb8e4a1057f75db47a704fb155f05d24655a59b26d0adfa09346db3a9ed10ad9'
  checksumType  = 'sha256'
  checksum64    = 'b46862adb5efcf6ca9f944c3a33275ddcfbbadc0b0b9fcb863eff2faa9f01f06'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








