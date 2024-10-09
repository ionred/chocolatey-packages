$ErrorActionPreference = 'Stop';

$version = '131.0.2875.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/45d609c7-6df1-4522-96f4-ee40cfb46aab/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b1d9f7a7-8feb-44d0-a465-743d31d4d7c8/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'DE347575586040CD120651E67E38541758C4203C8797250A3C59FE5DC4426AC2'
  checksumType  = 'sha256'
  checksum64    = '754D20450FF20E55053EF72C5B047FB96CC73AAEF7B6BBDAAA0E75F8E3895218'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








