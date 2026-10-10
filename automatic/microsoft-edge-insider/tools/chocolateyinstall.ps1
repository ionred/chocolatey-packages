$ErrorActionPreference = 'Stop';

$version = '156.0.4314.15'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c852bd49-2beb-44e0-91d4-08c036d1ae9b/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b6521d3d-102a-49ac-8b42-3b8511ca522e/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '9D72AE9CF1FEA7F2780988E5416DAC500E087E943C3E882B10E1631F5C9A563B'
  checksumType  = 'sha256'
  checksum64    = '79D1B601EE0EA9ED18135A536DC70364130F72F67C7115571D8CCCB05D692EFF'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








