$ErrorActionPreference = 'Stop';

$version = '125.0.2535.37'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9a39e37e-2e55-4724-a3e5-dbe8cb1c0702/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9ac9e3f6-bcde-4b8a-b36a-6e4a9e814463/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'E4BDE79A8545F96AD5B23969E8B47E0C0EBDD7A29071509AB9A4803CBA099997'
  checksumType  = 'sha256'
  checksum64    = '45946727E0F2C91A8D1326525CE488B296FC494D7A2AA42BB1E973912411C4D2'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








