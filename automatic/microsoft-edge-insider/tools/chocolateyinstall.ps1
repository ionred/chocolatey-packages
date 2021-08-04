
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7c46ff8a-24cd-4f92-b363-f8e0e1981352/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1efdc1bc-3d19-4167-b795-2b4f417e6ed1/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'ff3f9484807000fbba2c8114bd251c380431afd0a73d184a71c45ca63cff1c20'
  checksumType  = 'sha256'
  checksum64    = 'bcc6666085618f03de0cdbfcf0c7e3af59b285151c718facdf101afe6747e4c0'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








