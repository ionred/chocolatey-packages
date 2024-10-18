$ErrorActionPreference = 'Stop';

$version = '130.0.2849.46'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f41bfd99-6f75-49c9-9198-7b4945686a33/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/98c4d176-99a2-4735-aa7f-2323ab1d1e83/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '68641A302119094DEFC7ED271196DD503363657D1686D0F4C1925327F9560117'
  checksumType  = 'sha256'
  checksum64    = '23C4A457584BFE41C0CF83C1EE69721B7C476013CADAAD4FD2E3CBBA98F814D6'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








