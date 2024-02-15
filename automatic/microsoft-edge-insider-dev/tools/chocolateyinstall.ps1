$ErrorActionPreference = 'Stop';

$version = '123.0.2400.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/98362db8-9083-41e2-8c2c-5a110aab3739/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/59c350c7-b3b3-4f3c-be5f-b41690b9e7c7/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '9406921116B3CDFDFBB5497BA73C856F3601F2282A6FDBFB2790EB66A5AB5424'
  checksumType  = 'sha256'
  checksum64    = '6F3FA279E80FEB6D1D0363A0BEE9EEC4471A95CA8E15B247A67F0528F63D3368'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








