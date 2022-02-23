
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4ac17b0b-ab78-4e7a-a03a-c88feec40b4f/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/957eca3e-620a-4a9c-bd7b-f6588ddbcb0a/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '5352106dadabe5e58f0bf2e1d4158be0b4cf4718f863ee767a4b420e00c036a2'
  checksumType  = 'sha256'
  checksum64    = '88a5104f0dae089045b2e3dc582e6a67662a51cbad6f3b3160a6d6930c61f253'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








