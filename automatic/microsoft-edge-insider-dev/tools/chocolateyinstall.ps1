$ErrorActionPreference = 'Stop';

$version = '145.0.3789.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/284bdc34-1bdf-4edf-b7b8-98e4ad3ce7cf/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cc62445e-0e28-459e-89eb-d9d70c74ba4e/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'E42E8F4C4818A857D91D1BA5EB24ED598B1269881B4A5B7906FE258B941723DE'
  checksumType  = 'sha256'
  checksum64    = '7D8BA86B368BDFEC118629EDF38E06180752E37948BD59D3A7DEBBAE3769E3E7'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








