$ErrorActionPreference = 'Stop';

$version = '146.0.3856.54'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/302dad55-5116-474d-aa59-3912422a79f1/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/724c54f9-9ba2-464a-b242-54515ac46a76/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '9E71B995E66B10618DC05B9F6F1E0365A709C5801909BBC479A5C8DDC65865F8'
  checksumType  = 'sha256'
  checksum64    = '85A3B2AC763195B2BDBC865DFAB206D70FFDB5B110C7B3FC113F6B516C7C3931'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








