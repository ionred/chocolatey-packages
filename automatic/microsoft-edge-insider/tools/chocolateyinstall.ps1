$ErrorActionPreference = 'Stop';

$version = '144.0.3719.35'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/717e211e-6292-4a46-b49c-ec3fd9094f21/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/afdb50ee-33b4-4404-ba7d-bebb02c9a408/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6F20CD64E0B84B437F7BA6CDA9307A0094BCAB00ACFD3C212E2D2233DF1F9985'
  checksumType  = 'sha256'
  checksum64    = '98E2E48C5561AADCE7148BAAD6B698F58106FF0131CABAEC0CB9D0221396368D'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








