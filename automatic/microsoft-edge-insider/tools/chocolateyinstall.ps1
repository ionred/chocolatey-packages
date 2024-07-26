$ErrorActionPreference = 'Stop';

$version = '127.0.2651.74'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/20e582f8-8ff8-4614-a348-9ce4941873eb/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c41b2f3c-44b2-43da-968a-4005a70ead71/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '877B9D9DA7077ABE861B264BC50ABC9828CD4EF60C495D34163DE94E73CB1717'
  checksumType  = 'sha256'
  checksum64    = '65BD84278ECE6230AEB8E2C7FED20BCA5FE30BD2AA3C61311278D7D92C4BE691'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








