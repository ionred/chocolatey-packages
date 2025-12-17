$ErrorActionPreference = 'Stop';

$version = '145.0.3734.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4bbf7f67-20df-4baf-8c0b-e985f857fb7b/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fb391572-0749-46d7-ba39-62cc77121414/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '6F755F437F6AC2240AAC6CCE8ABDEE6D22408FCA1ACBB1308F823FE91B2F3C66'
  checksumType  = 'sha256'
  checksum64    = 'AD56505CB44833A0BE2BA27152E1C1F634CDCCED8460BF875231E5B3A647B9DF'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








