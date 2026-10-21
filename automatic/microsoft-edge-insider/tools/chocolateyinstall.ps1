$ErrorActionPreference = 'Stop';

$version = '157.0.4341.10'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ce8298af-2bfe-4a07-a4a3-c4add1d29edd/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c30c9d98-74c7-4c0b-a6b6-4bd88a9a5f7b/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'EB030C3CDBD4677277AB39382DBD183E528E476EAF46C18A6F6DD9A033C8A8D5'
  checksumType  = 'sha256'
  checksum64    = 'EA19121BD2E3BAEF50709CF8D16B45348240FFE6A23FAF10C39DA921C4044258'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








