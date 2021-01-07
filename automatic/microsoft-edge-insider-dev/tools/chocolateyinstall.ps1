
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/62ba5e86-9783-426f-9ddd-24cb00eb51dc/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1fbd2f99-b7fa-48e0-94a5-aa5b8ba6ccf3/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '68e14fd07fef0abb6e40e52db8ca866a7dc6108eeb46c16646b211c3f3327f28'
  checksumType  = 'sha256'
  checksum64    = 'baefea9bac4e83f02283d235f693fd226e64df693fb5a51d6cf463bf27cc8d21'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








