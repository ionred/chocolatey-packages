
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c7a4d48e-d911-492f-92b2-e9e3f874fb82/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f1f278c4-cbe3-4450-a3bd-b7a29256c76a/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'dbb30b87a6a03f6a1cbb9391d77edf0d0efb7e748b3d28d78bc4b16080b7baae'
  checksumType  = 'sha256'
  checksum64    = 'e3fe900f078020e3ea69571bb3b45f9aefb68a93080844b8f0c12bccd8859653'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








