$ErrorActionPreference = 'Stop';

$version = '123.0.2420.65'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b860988a-2858-4403-9080-33f5ff3ca3a5/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/307a924b-71e2-4bc0-8b63-294689d3ec21/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '3B65C7B58137DE764B8AC6CE84C9A0F97579D51AA5AB42FE5721B08138D5B7D6'
  checksumType  = 'sha256'
  checksum64    = '7786C1E2C0CCDD8288048FB5156AC1713AA2B62FE1C09A5F9549CE5843E8ABDD'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








