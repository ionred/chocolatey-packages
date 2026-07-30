$ErrorActionPreference = 'Stop';

$version = '152.0.4181.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b02f0f56-e949-4748-8b0f-52a21b956a17/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/22a3cfb4-8e65-423a-8502-8141c83e58eb/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'E61DE0E227DB39D66AFBCD31429493D32F793B48FE0D6A84237067C20D6A4B88'
  checksumType  = 'sha256'
  checksum64    = '16B8A2DCD5239A5FDB5085149CD2A838212646CCE1A290056F5F4D1E1729F6FF'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








