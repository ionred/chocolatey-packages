$ErrorActionPreference = 'Stop';

$version = '129.0.2752.4'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/62673c87-4b0a-4fcd-a169-616b23709944/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e6238915-b357-4777-8677-ca3a8966ef4a/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'BD5F1E43E22D7CF9751E897F7B0B1FD378447530867C8A923A35599067ED2978'
  checksumType  = 'sha256'
  checksum64    = '0FDDD6DFFE7697A9C792FAF617F5FED14F42C3CBE1D354D58D6426482DFF4039'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








