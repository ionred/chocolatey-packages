
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5fc1ca3d-3ab5-43ab-bac3-8e9dac24522d/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9a4f2bbb-1998-48c2-a50b-5e4f47618c02/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'cb1a16637cc591b8e353e043bf958e3a8b846d202daab9c51ba6f2d411682e60'
  checksumType  = 'sha256'
  checksum64    = '88ed900111c236a9ae1c4e8323c00fb3cc56d861f6fa6130c9cbdac3cd201b86'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








