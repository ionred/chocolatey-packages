$ErrorActionPreference = 'Stop';

$version = '123.0.2420.6'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/bd9d2cea-6344-4323-96a8-6ef22e6037c0/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ffd45869-a27a-4b7b-9c26-f83b61adf927/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'EC47B0646B8217BE7EDC6A3E326C3EFAD7FA5CD7D725FB9A64036AEDEBDEBA90'
  checksumType  = 'sha256'
  checksum64    = '4AC1ED2C8E0592F3CA8DCA875410A86B31E15EC99E0A6A0B948BE0694262D7D9'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








