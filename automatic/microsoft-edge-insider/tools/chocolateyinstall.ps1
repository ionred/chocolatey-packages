$ErrorActionPreference = 'Stop';

$version = '146.0.3856.33'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/435417ba-4a3b-45f1-8bcb-e5fd2b619cc7/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/96863292-713d-4a7c-ae77-0f5b59766186/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'AB979BD63585908972D33A0574C27C3C216820659D86BDEF4B1530C483611BEA'
  checksumType  = 'sha256'
  checksum64    = 'F6C427CBF5F816091BA4F0F1448814CDA290A5C293DE0ECB732D214B961BAF98'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








