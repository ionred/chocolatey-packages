$ErrorActionPreference = 'Stop';

$version = '147.0.3912.16'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0be67095-52d8-4754-ac7c-f9b91b57afa0/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c62de77e-689b-490c-b4cd-9b94de7ad433/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '576950D7FAB7F87D5A5084F4EF82F722DE9CC492FBD507EBB643ED24427CC874'
  checksumType  = 'sha256'
  checksum64    = 'C6BAEC35645FDE6B03845FA649CDCA53A1147E97CCC6E006D14B93C645DC727F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








