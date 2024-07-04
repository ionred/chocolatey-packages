$ErrorActionPreference = 'Stop';

$version = '128.0.2677.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e787f700-0b34-4354-953b-17edf7fe92e9/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a5b3c600-1f54-4a74-8f19-de9368999c2e/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '4450B416D12E11AA0380F6903AE89345897FDBDD64CF7664D17D470A7294763E'
  checksumType  = 'sha256'
  checksum64    = '232FAFD7655A6EE8C83B0A15823A32EED33BE5611DCB0BFB2786F0B7D7A7A5A0'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








