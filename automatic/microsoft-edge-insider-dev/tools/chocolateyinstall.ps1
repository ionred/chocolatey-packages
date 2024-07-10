$ErrorActionPreference = 'Stop';

$version = '128.0.2690.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e787f700-0b34-4354-953b-17edf7fe92e9/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e8c3432e-e86e-45f4-8fb3-0882834ca64e/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '4450B416D12E11AA0380F6903AE89345897FDBDD64CF7664D17D470A7294763E'
  checksumType  = 'sha256'
  checksum64    = 'C5DD58E8FB4C994ED24690799FB14B7F704D8CFE951059708C6687EDE6716C5D'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








