
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8c350289-98e4-4cab-b34f-1ce925f89461/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d69816c8-1eb3-4364-8889-be9b0cf829a6/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'f9cd508166875bb06ef904168b9618f9dbe7e9bb88a0cb1742ef4e3ae0790a56'
  checksumType  = 'sha256'
  checksum64    = 'ea05fb53f6b83da964d7f9d0bad99d232219ab465b8496eb47faf7c5c6f48985'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








