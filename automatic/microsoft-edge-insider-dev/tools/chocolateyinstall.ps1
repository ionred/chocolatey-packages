$ErrorActionPreference = 'Stop';

$version = '152.0.4191.10'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/bc10d1aa-7e02-4e87-9323-9e5141b29837/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a000a29f-7cd0-4a71-9ca8-3730cac5a756/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '8D7A4B98A1709DCF7EAB79D01C8559C51D043F4657593570265B0C70A814B944'
  checksumType  = 'sha256'
  checksum64    = '691FA9C44C39529EE5ECF41DC7E0B18575005C66FA6B1720D00C64FB418FB530'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








