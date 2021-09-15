
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7e02e028-d84a-4541-b491-dc66a4445d33/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0e91d9c2-af0c-4bb0-af63-b0766594a246/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'c05fba5f5b7c9aa078bc49f8f29d5dff0dc30becc47c29d0b2f633370741020e'
  checksumType  = 'sha256'
  checksum64    = '2efde200cf4a4a217d09a78fa5f0e38bf741a3684967df5469cdc38b645bc129'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








