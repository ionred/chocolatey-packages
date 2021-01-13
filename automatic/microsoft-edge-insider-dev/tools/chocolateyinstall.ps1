
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2d9a2ecd-e848-45e2-b399-e996eb8b5c4b/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dd9ad705-07eb-4eea-bd2d-c8b59879d69f/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'bd2ffa77eb222624126945dd26c42b997e6956a1ec245a1b0b16416dabd71479'
  checksumType  = 'sha256'
  checksum64    = 'a86cc407e2f4a46719afdc6545d30c206ea20a73884b38fb58e28c2a6a592b31'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








