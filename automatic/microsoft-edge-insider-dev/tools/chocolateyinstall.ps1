$ErrorActionPreference = 'Stop';

$version = '149.0.4022.4'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/39050de5-bbfd-4a39-97e0-659ccaf8a533/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/540ddcc5-8ae8-4cf4-8c76-d0ca0637bb2b/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '6DCAE8A3081729E441E855101BB4EEFD5254FBA9D221552C29C14ABE63E1E8AB'
  checksumType  = 'sha256'
  checksum64    = 'A9D010B806639C63A414F205FFF34B32779FAA556D2CD055D5E6677E56A4EBC0'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








