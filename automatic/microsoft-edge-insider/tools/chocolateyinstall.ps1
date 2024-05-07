$ErrorActionPreference = 'Stop';

$version = '125.0.2535.29'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/09c100cd-003c-45ed-a767-761856bf1e77/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a276a192-6bc1-4d7e-980c-bba8661666ea/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'BBD1C8DAD58553F76A51D89EE8D9A72F9C46196D943929A4EAECCCEE1611C3C4'
  checksumType  = 'sha256'
  checksum64    = 'E4D12050A5B3FA65A434F333A0E6663281553AC30E1335A4794DE4CE04BD3531'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








