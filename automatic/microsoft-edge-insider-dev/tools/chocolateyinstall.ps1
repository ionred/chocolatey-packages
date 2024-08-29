$ErrorActionPreference = 'Stop';

$version = '129.0.2792.10'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3d307039-1b60-458f-9a69-06293dfcd7fc/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/72dea6c6-ce93-46e6-b85b-c91a52f44892/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'EB2A88257893E45143B3C3B784FD18B693C9C12A9CB32F8C7E7DA00AD0765210'
  checksumType  = 'sha256'
  checksum64    = '37412A944074FD7A112DB54AA216F4D9DCBD8A019F1CFBEC6FBDAD6561C7669B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








