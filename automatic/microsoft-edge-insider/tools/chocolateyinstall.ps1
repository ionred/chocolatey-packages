
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/924dcd46-6f8f-44f8-aaf4-d117fcbbef86/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/8f1d3b7f-632b-4c58-9e8c-74f336832e2b/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '0e547f02bee5ab04927f4bbb4e1b819c72a5cc3da6a5676614bfd3eaebfa2326'
  checksumType  = 'sha256'
  checksum64    = 'a13f5e9cbf72f2781a05ba9bd3d9f23b84626d2eaa70e9c6c8938e6733ca4a41'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








