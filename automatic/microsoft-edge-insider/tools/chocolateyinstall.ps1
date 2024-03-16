$ErrorActionPreference = 'Stop';

$version = '123.0.2420.41'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a713f254-18bb-4213-9883-a0f618c36a65/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4d352577-3d2d-40b6-95ff-7e6b6af66572/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '04FA742A758263DFBDEF6D1000753C1A9DDBBC9D09515D4DDBDFEEBFBEB296E4'
  checksumType  = 'sha256'
  checksum64    = '2C1CF6D2115FAAF7EE44210B8B5DCFF2941C8C0E075C0343696C8469733C215D'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








