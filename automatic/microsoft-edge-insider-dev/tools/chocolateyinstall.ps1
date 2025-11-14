$ErrorActionPreference = 'Stop';

$version = '144.0.3664.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/36433e21-8dc0-4356-9cb4-9e61d67831f1/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e1ad5262-2b11-47d6-807b-940293dca1bb/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '5CA1C421FC6F3D4052F0C1EE624516369C90DA07AF33E6712F7C0331643CE067'
  checksumType  = 'sha256'
  checksum64    = 'B99D1035684364D8C7767AA17254B1090EB00060553150210AF48B72624CEF3E'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








