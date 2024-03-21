$ErrorActionPreference = 'Stop';

$version = '123.0.2420.51'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e53bb1c4-7824-4552-bbd7-77ead35102c5/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e8be11ff-04f3-4963-b6e3-33392f85fcab/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'B623044588AA1ACE687D01DBB885008637F4BB50FABFDBC8D3B7C380EA2BAF7D'
  checksumType  = 'sha256'
  checksum64    = '466F1380161ED805F7AF2DE6C5BF6B22F6C63E4AC0B8AEA94E394620218C700B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








