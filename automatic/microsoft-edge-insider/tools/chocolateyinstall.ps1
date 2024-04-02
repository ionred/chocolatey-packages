$ErrorActionPreference = 'Stop';

$version = '124.0.2478.19'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d6cef99e-abdd-4b31-8dc6-f1787b258f52/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d812d8bd-1805-47e3-8c13-647de45477b2/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '27CC0CB6D76A732CFD3001B95D3F70DA2AC4D17245AA85FCB8AD41BFD5258BA2'
  checksumType  = 'sha256'
  checksum64    = 'DFB6DC3387199821954EF64452AF34ECF2104602625C41E410CBDA38715B8241'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








