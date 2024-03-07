$ErrorActionPreference = 'Stop';

$version = '124.0.2438.2'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/70169a4c-856e-4cd5-b29e-5506814b47c1/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8e445804-d483-4bae-ad49-ee1f6bf0040e/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '35770A836B1FAC1EAD51F880C3DC3B59AEFFF34E20CB2FED7C1058659BC2C922'
  checksumType  = 'sha256'
  checksum64    = 'C0047736580D780132933320435D2B3B89FEEDA57078978DE95D1ECFBB869128'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








