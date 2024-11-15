$ErrorActionPreference = 'Stop';

$version = '131.0.2903.48'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5c334b45-7445-422f-80e9-b11c29070c11/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4faabca0-9b06-439c-85ce-7666077abbb8/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '5559E4C3660FA4371A105C1E1FBDDB82E0B3CC6E774E263E50D76898D4691ACC'
  checksumType  = 'sha256'
  checksum64    = '79DDCE2D9B6DCF82E1E852A62D223AAC5AAB0D9923EBDA7D6886B5C2D2ECF9C4'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








