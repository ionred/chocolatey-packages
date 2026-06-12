$ErrorActionPreference = 'Stop';

$version = '150.0.4078.5'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4d952a29-9832-4983-ba7f-76c245921690/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/06840d32-4f3e-4311-92a7-1302bbcd403b/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '954925CF42E23BA4D56F31AB85615B91FBAB55866AB429044C4C1303D918ADCE'
  checksumType  = 'sha256'
  checksum64    = '071E8320AE834DE169CB7A5BEAAA465887FEA52A327EE3A4E10E3EBE6F5BCF62'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








