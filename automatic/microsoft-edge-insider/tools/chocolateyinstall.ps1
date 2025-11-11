$ErrorActionPreference = 'Stop';

$version = '143.0.3650.15'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/aa398191-e590-4e93-8ca7-4821d1dcc8ca/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1f31b4a5-82f7-4a1c-b54a-ca64b2ff002f/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '5F899AEBCDC45E01A53039A045A5CE8C0A0C2E4B4AB9E1BD784B33419A4BE6A3'
  checksumType  = 'sha256'
  checksum64    = '526BC4430962D3A9532FCA02B9AB9163AE6107A2FBAC0920701F37BC66BF152B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








