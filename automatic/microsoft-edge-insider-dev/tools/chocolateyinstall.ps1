
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d7129cc4-fbcb-4a6e-ba29-fb4f8a50ab00/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/750825be-9842-4d1c-8800-a4b33186f310/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '1c1b1bf644a1ae1f368e9a0513f99209817ef1c08982f6aeb0453d25f4756fd3'
  checksumType  = 'sha256'
  checksum64    = '50b5b16af2a34ca574090d4fe3dfe72d2d7b634870e11e5e7b6563a0ea908553'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








