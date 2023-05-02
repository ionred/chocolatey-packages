
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/88b6ef92-6ec8-4eae-b2e0-8195ac5fc0ad/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c073f71b-3113-4b76-b481-6700176ff475/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '6135bfc72549f67070315e4478d4e183b61dcdfbcc0d83f8f9a5604bcf10e4f9'
  checksumType  = 'sha256'
  checksum64    = 'a3a2ccc0ca381d28c7ea899fad7c54fb82f7be490c96a5a4132ea09b6762a93c'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








