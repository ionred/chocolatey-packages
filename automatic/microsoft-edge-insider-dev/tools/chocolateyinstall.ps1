$ErrorActionPreference = 'Stop';

$version = '143.0.3638.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/155a9bef-1272-4da0-830a-67647a98140b/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3b9b41d3-7038-420a-bb07-66fe54926f0f/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'A9E87ACA4617F11B4D0A88C2F4F482F768CAE23CD07C94204B484C9E4A169ECB'
  checksumType  = 'sha256'
  checksum64    = '309EF7A9E870F9ABB3F9D4EF066895C90A3BE5EF66EF69BEB911024E58DC96FF'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








