$ErrorActionPreference = 'Stop';

$version = '150.0.4078.42'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/25b62ad4-ac56-40f1-929c-af5197f96277/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/79d4396f-6b6a-46d3-be0f-451ad38d627e/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6A1B23B52D4C135E7BB0D0EB9683877FE06AC56935F34694E64DF8220F506E73'
  checksumType  = 'sha256'
  checksum64    = '4F6FCE66EE01F5F35A36D831368EBD43997B0D64EDB4BC9D1AE076064A4B44DD'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








