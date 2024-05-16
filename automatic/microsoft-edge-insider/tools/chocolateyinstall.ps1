$ErrorActionPreference = 'Stop';

$version = '125.0.2535.47'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ae302dc5-c32f-4934-9e30-238c23cec634/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6963e7b3-beef-4b51-be99-aac5735c14e5/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '48E109C6E1704C4A067C9832C7A4B823A1110F6D331092846E52D8C8C37BE879'
  checksumType  = 'sha256'
  checksum64    = 'D3FFE738909CD5553C6CE29004DB4B0154EE275F82C9AC3016642727B1044088'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








