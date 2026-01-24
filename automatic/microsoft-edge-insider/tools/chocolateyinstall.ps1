$ErrorActionPreference = 'Stop';

$version = '145.0.3800.17'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d13c0485-12bd-46fc-987a-a2685990b624/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/40c3999a-d0b9-48b5-9d7f-882ddb4367e1/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6566FD9CDBA7AC67398184FA3820A1F318DD6E4357AF495403FD28BDBA906E08'
  checksumType  = 'sha256'
  checksum64    = 'D093647342766EA3FFDD339611364F530B6BE075177D85B779B6DA2215CC6CE5'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








