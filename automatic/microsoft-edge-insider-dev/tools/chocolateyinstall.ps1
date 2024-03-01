$ErrorActionPreference = 'Stop';

$version = '123.0.2420.10'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/410fd1d5-3d16-4e5e-8d06-e255671d7623/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/811bf56a-17e7-48a1-88ff-5b2e5d1c68e0/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'F3D7C2378C6ABD14699B50A577D386473A8F032762DFF2D1A5EBE29CCA677E7D'
  checksumType  = 'sha256'
  checksum64    = '59F53B22200417A0457FCB45B38986A6A3804815AEB07DB2F01348D81E3F9652'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








