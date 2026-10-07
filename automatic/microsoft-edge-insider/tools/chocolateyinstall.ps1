$ErrorActionPreference = 'Stop';

$version = '156.0.4314.8'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/939f0755-841a-4a61-8cf5-87c5f566b2d0/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2563aeeb-8023-414d-988f-ff06324ea3fc/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'C0EC206385348693712F135C8F1EB254843ABAD06D6B3AD1704AB06C230B8933'
  checksumType  = 'sha256'
  checksum64    = 'FA5B0FFA659253949B55CD09C2B94AB06042A0357346229781CB7DA5F1378DDF'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








