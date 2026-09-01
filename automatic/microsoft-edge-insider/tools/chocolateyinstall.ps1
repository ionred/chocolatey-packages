$ErrorActionPreference = 'Stop';

$version = '153.0.4234.13'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0f840540-53f6-48c8-8a88-251a3c461cf8/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0c67bc95-093f-4c7a-9528-6273b231493e/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '5F0FD0EBF04B212BCD567B3B0C64950A836CC62417C3FEC8BF7EBD8C43F701A1'
  checksumType  = 'sha256'
  checksum64    = '37E736782764F39FA2D45CCAC54A0F89005D248607EB8EAEB58F76385CF84BA8'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








