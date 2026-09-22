$ErrorActionPreference = 'Stop';

$version = '154.0.4258.32'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/a596a87a-f9c9-48a2-927e-6ccac92722e4/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/42a3b7fa-46ba-4ac3-ad79-e16ff4f8583b/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '642410CD4C1374F1DF64996D0D0EF6DF4B11633D70AEDBE4CAE21CBA8D1D82B1'
  checksumType  = 'sha256'
  checksum64    = '0DD4B4F51E6839025EEF5E6E74D3A2F599A7521091443AABB634BEFC06560824'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








