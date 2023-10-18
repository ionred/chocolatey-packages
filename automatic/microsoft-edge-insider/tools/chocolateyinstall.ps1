
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/bffb394b-f5e9-411c-9e12-83e77fd52a0e/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2ae8ad90-198a-4ea6-bc5e-890ebc308982/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '38f7035e1e88d517288ad27c3fd8f0e16f7b25043cb3a8f4449b0d79710b678e'
  checksumType  = 'sha256'
  checksum64    = '9182d6fffe96cc6b799bca67770e91c4ecccc28d6a821703c0646e4dcb15a8d4'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








