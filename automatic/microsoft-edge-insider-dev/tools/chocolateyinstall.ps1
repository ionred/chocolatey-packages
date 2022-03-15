
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/844febe0-3d3b-4f76-939b-bbd8e2e367cd/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d598773c-1a65-4720-a9e5-7afd68a50080/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'b16df4b189aa252c3d44724e4fd997eb5fbc82ba6e04022a2fed2f76ee4a4c83'
  checksumType  = 'sha256'
  checksum64    = '87e877077ebc230e26fcbe6db3636c7c0864d0d2a96a20f6c247ac298becdfed'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








