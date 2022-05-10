
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ba271a83-16d9-4451-bcfa-b7e493c800af/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dfd81974-a473-4d42-b66c-ad1be489257f/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'd51975a3b8b00d62d68dacfd2219bc6e4a3ca3d2baa3e48384fce488131426b2'
  checksumType  = 'sha256'
  checksum64    = '0aaf535c9c99fdde9e3f72911eef148ef399a9bd36c7f7baf1cefdd38633a0c6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








