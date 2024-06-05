$ErrorActionPreference = 'Stop';

$version = '126.0.2592.36'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d649f9f9-2b23-4bc4-a672-88588e6abb99/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b1ef8698-ccc9-4f7e-b39a-e9ca3a360e11/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'DCE87556B6743076DDD57C7253E7DA151B54CCC682B3A402B67D1E8749EA8D04'
  checksumType  = 'sha256'
  checksum64    = 'FAE29CC60B5141C9EFE413E7CDBF013BEA1419EF5CC82DE846E49FAB783AA5F1'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








