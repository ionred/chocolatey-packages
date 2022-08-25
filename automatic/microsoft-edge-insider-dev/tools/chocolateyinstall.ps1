
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/329e681c-f7de-4d5e-b666-86457b1aba0f/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/da2b7fc9-c029-4b7e-bd68-3fe6419e50f1/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'bcc3f870e217bb131c43241bed0e9e092dd9e51cc2c39c28efaddac6c9d81776'
  checksumType  = 'sha256'
  checksum64    = '7eee98f2493df67d9176476c7f2378ded7d72c8331eaa75a5a2e6edbeb2b475a'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








