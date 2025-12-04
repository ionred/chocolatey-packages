$ErrorActionPreference = 'Stop';

$version = '143.0.3650.63'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/eda17835-966f-4b89-bfc4-b0d6905648e2/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dd3c8ccc-bbf6-4efe-a8b6-fad014e25939/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '5419F7AFDE43FACBBBD8F40B128AF5F422751B824CD8619BEB78A24D46B074B3'
  checksumType  = 'sha256'
  checksum64    = '4FED107F464A01988E610E57B5A7E635C2E857F77F1E83BAB19E5A1D655D9BAF'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








