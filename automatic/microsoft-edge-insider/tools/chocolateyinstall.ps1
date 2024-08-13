$ErrorActionPreference = 'Stop';

$version = '128.0.2739.22'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/674cf569-ebee-4541-92f9-58554b9bb377/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b29afae4-47a8-44e0-9dc8-36def09f5209/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6AF6E58CD96D71098D2540304332783F97F04070913D7B0FCF3758167CB9C6EE'
  checksumType  = 'sha256'
  checksum64    = '3970A2B82460B6CAC9E6F0479900111701BD63E7C0B7A31887B9BFC926CA394B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








