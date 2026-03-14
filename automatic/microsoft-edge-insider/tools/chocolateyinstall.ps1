$ErrorActionPreference = 'Stop';

$version = '146.0.3856.59'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2cddb687-1119-4582-af0f-cd662510f738/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ae5f034f-6420-46dc-8790-a3eff8458048/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '2AB92B9203DD190A17C7CFCAA85DAE7E34F184CA274FC2AC795A811A6567624E'
  checksumType  = 'sha256'
  checksum64    = '0B2420ED8873A529ADBFD5762F7EAFA23352B88AB9A4202B621B79200BFD2D2F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








