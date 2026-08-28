$ErrorActionPreference = 'Stop';

$version = '153.0.4234.6'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/49a19471-4a8e-4af3-ae9e-24cfa29e9c6d/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e4bd4c14-2258-4b5f-9a44-9f7185ea1d71/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '968510DEA51F201B2805BEF77A694EEEEBE8032D78206EE8B2EF5E09D5C3640F'
  checksumType  = 'sha256'
  checksum64    = '038767946000245D976FA74DAA9C5D7C52E50FB5209A26B65D283B84D89FFF2F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








