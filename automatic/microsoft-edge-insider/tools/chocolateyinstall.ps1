$ErrorActionPreference = 'Stop';

$version = '147.0.3912.26'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cc9a2473-d847-4760-b084-c5c93a429d42/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/228930a2-dbfc-4a5a-8b76-c2ed3b10de2b/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'ABA3521217915007AD3025067CC0521A82F492EA0BE51A4391F7E2794D475448'
  checksumType  = 'sha256'
  checksum64    = '77EE894BCE89CD52DDA554870972C14BC3685386E247A4BE53B18E844E94EBE3'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








