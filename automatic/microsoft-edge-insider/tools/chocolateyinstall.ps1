$ErrorActionPreference = 'Stop';

$version = '149.0.4022.16'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8dcf896c-f954-446c-8002-166d9fec03c3/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cd4cc69a-3c03-43fa-bd63-f0ed6cddaea9/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '00CC1633114ED49EA81F2F3815CCE7F1828C165694EBEFE32C78C2A58AAC2879'
  checksumType  = 'sha256'
  checksum64    = 'D015E9A87AE2B39B2C823C376272BB6EE5A8A07C0E321810B2593B957573FDDD'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








