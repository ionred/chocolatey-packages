$ErrorActionPreference = 'Stop';

$version = '144.0.3719.67'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/580c6a2f-af34-428e-838f-2a205f1e0250/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c18652d9-820d-470c-8296-94a06cb05a4b/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '42F30A2F6E25026675231B3EE42A911C2319EF053CFFAB83D480FB677D88EDA3'
  checksumType  = 'sha256'
  checksum64    = 'E28BD373599F2C3603ED8582E9962CD8948E673C008274A7DEF0F403C53B858F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








