$ErrorActionPreference = 'Stop';

$version = '146.0.3856.13'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a31cd890-a270-40db-8f8c-794585c90935/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ed373d6c-8856-4e9b-82ae-9689dbd45d9c/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '28364AD10A75B00FD4517A165988B8E6C3622B56E74811E47CA385AE38A8F186'
  checksumType  = 'sha256'
  checksum64    = 'BA04754418E5BA6F8BA9AE95BC801E5A0A4B792CCAD71028FA7DD79FD3BC6E73'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








