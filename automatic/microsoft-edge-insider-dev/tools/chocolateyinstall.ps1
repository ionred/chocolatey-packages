
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e3e9b06f-4126-486d-a7ab-65b8ff0e3ba6/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ed9b495c-3c00-4b66-a9b6-5ba7d45ef4dc/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'e6b4fa9ee3d81b5897ca9223c1f52d193beefbedb088a839c6b95bf8943454f8'
  checksumType  = 'sha256'
  checksum64    = 'e574fcc5584e258b4709fad5bd151b507805bcb23bf67e40f21453c03e2571a2'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








