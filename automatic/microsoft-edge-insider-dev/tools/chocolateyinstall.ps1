
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/7f8db7bc-c3ac-4885-8f79-44f85e7cbb03/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/3875dc1b-2a98-47ec-90b4-79d60d980ce7/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '8da4c2f58efd8ebeb9f11e25f39d6fa23ba1004d2807184081927fdf61ceee16'
  checksumType  = 'sha256'
  checksum64    = '9ee9ddb392a30c997ad7cab2fc7f758a62540797722dec40e27e3a2e17f51ac3'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








