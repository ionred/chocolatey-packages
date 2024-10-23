$ErrorActionPreference = 'Stop';

$version = '131.0.2903.5'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fe830e3e-86b9-4f8a-9ead-81b961f893eb/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/db0ff38f-9035-4feb-a876-0ff6ff3cac77/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '2EFD8258B29D745AA3D643A1460E77B6B84FC9696E984E5380A5E673D45477CA'
  checksumType  = 'sha256'
  checksum64    = '26D4344AC684D0472A9FA1B5DE2F49B3B590446DDDD8AF6D3108D5FE7C1B299A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








