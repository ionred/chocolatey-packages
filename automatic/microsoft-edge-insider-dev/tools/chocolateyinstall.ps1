$ErrorActionPreference = 'Stop';

$version = '150.0.4078.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/154808a8-d5e5-47d1-aefc-2a7e8b36bffe/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/defaa3ec-5a81-4105-84fb-85ffb32f2c0b/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '55EC23830C725ED410E2120A1B3F319AA9E95C019061EA81AF41A1E1292B6763'
  checksumType  = 'sha256'
  checksum64    = '43C3CF5672A722D7065ABDF3E15310CFFEB3FC3CA47E954D9CFB4611C612C934'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








