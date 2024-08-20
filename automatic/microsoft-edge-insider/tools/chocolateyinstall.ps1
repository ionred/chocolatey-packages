$ErrorActionPreference = 'Stop';

$version = '128.0.2739.33'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/056fa3c6-b194-4584-b299-6d4b90827ce9/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c02e943e-b7d1-45d0-b5e6-93ed93a66fb9/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '2C674FAA6CB04760DB3C06AB2688A8F549D91076C29711ADB18D84262F87D5EF'
  checksumType  = 'sha256'
  checksum64    = '4E92D3F4780873F1C12C19FC1823CA04D4B4178EAFA33BE92E0BD516F4FB7F88'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








