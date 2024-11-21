$ErrorActionPreference = 'Stop';

$version = '132.0.2957.7'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/696cd031-7ab4-4f78-b31c-065f5bfbf8d6/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4742c6d8-68f0-40b3-9a3a-590599a708f8/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'DA3D593344096D0465D545C534F5ADFBC4D6002A7219A0DD2E5C4AB4DF13277E'
  checksumType  = 'sha256'
  checksum64    = 'E79C62AFF3CA16510DA28341984C15AA5B558808AB690E444F964A18E5DDC26A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








