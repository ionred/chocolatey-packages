$ErrorActionPreference = 'Stop';

$version = '133.0.2992.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/23175bf4-c80a-47fe-a3be-5f84d4d78a28/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b1ff8c5f-2f0e-41be-a916-916f3b9fb5db/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '5198E48423E3A6A6DA221E10FB91BF96C7D1C9F0D9D939CA6231FC7AAEBB3E8C'
  checksumType  = 'sha256'
  checksum64    = 'F0EC7893517069223379962AA1CC744F4D3853CFD17D229668A4BFDE69118E3B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








