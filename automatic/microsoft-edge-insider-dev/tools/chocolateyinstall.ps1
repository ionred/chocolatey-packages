$ErrorActionPreference = 'Stop';

$version = '128.0.2730.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ad67a010-fa3a-44a7-97de-4c77e1075b0b/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/09d367c3-cb89-453a-baf9-0293e299dd91/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'C5FABD86EA483DC145E2FBBA6E4F20A1C4C7DD60B2134B1CD7FDA9A4C00B183B'
  checksumType  = 'sha256'
  checksum64    = '9648C7A7F10617E0081DFC9DF0CC18BD4CABDE07F7A8950F03CC61FFF7C25704'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








