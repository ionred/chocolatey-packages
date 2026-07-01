$ErrorActionPreference = 'Stop';

$version = '151.0.4119.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8d8eaef7-9bb3-4fb7-9d3b-3c04f3e3c212/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ea17e07f-d8dd-42f9-8bb7-0168e924f1ab/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'EC90589B17ED8D10A8126023580BACE69A94E1C10EF5D85226F354AE37C36502'
  checksumType  = 'sha256'
  checksum64    = 'AEEEC31DD58D81BB4CBB9F30DC34788DAAEDFE51A80D899E1D1AB528C696C8D2'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








