
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/815e387f-6ea1-4a6a-893f-f5784c0ecb48/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/bdad1339-989b-4054-a6b9-c9d6fa22dc52/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'e6c0b593b4b3ed40dcc815a911e7d535a2e4c70e716d7a003afb8e21c8e18d42'
  checksumType  = 'sha256'
  checksum64    = 'dce86aa6890e0cc094cc57d3ac7b46a107f900394cc0c7082bf5a62916920564'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








