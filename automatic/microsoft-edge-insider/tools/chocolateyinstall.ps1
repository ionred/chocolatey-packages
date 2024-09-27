$ErrorActionPreference = 'Stop';

$version = '130.0.2849.5'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1fdc4fbb-24d8-469f-b2b6-0232281d623d/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/051a81b3-b21b-401f-8d58-226602775381/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '689DB165B5C33030737ABFE167E65A7714767A99DFB948D42050911F952A11C6'
  checksumType  = 'sha256'
  checksum64    = 'AB7BA524B5A9831AE03BFFD3BBB99BD1151D7CA54AF64949806285273A8A9A76'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








