
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/59a8e3e5-66f2-4760-87dc-5427d92197bd/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/95c2cfb2-f35d-4f7e-8227-8b6b8f58eb57/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '872afa0c0fbd21b8639848049eb30ea6a1079d48aeaa7d721d38e076653ab612'
  checksumType  = 'sha256'
  checksum64    = '9d95b1014d56204ce600a23f89fa47f4692869b0480e5a20abf38cc84f8ec8f8'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








