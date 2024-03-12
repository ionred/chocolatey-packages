$ErrorActionPreference = 'Stop';

$version = '123.0.2420.32'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fb43e88b-f02c-4eed-9779-5019f5d1f89b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/71965280-893a-4b1a-9f5f-6d5e85ceda7a/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'A721F32BEABC117439682982D90CA26BD887CAF174EA94136E5900FDBD959F12'
  checksumType  = 'sha256'
  checksum64    = '916AD48D614093A4C836B5B28FC06531D0D6DA7DC59A7ACFD4923958EDC98430'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








