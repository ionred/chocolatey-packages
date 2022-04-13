
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5c616577-b3bd-4978-8ae1-6dfaf3ba22ea/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dce0d958-cd8b-45d0-9c93-aea5b4fe8ac3/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '692f8a2fff73261d0c58fbb08770d0f32d24ecaa518b2fb3ff59922967d51236'
  checksumType  = 'sha256'
  checksum64    = '1dd68b7639a251c0ce2bbad88ce950fa1ba198a2c82b4eccc86b4d28daafacc6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








