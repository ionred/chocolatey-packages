$ErrorActionPreference = 'Stop';

$version = '126.0.2592.53'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/df9054f0-619d-46bc-ab41-ff0fbd4c0307/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0cea84ec-2ad3-4d7a-b74f-6ca83def12a6/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '7A7480010846DE4CDD276C82C49FDB8CF167ED86931C79BBBE5F9C811A92F9C2'
  checksumType  = 'sha256'
  checksum64    = 'CF964AC987971A11A180A9CC45B18F2FBF7E2B40465D83BC92D60F0EFDA125EA'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








