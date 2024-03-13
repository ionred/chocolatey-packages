$ErrorActionPreference = 'Stop';

$version = '124.0.2450.2'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ac1cc276-988f-4fe3-b2c1-1bd6b04fb62c/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ea421814-d8ef-42c4-86de-172a1625a825/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '2B61048416B162B4E22470232E2A9D2FDCF12E4C44E278482EA301A8AB8CFEC5'
  checksumType  = 'sha256'
  checksum64    = '2BA98C2653ED9C994A98AE328F633CC25870833237B2B72F8A6C00E452E0110F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








