
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/1959c2ba-8993-498c-b0e9-9fb4e24a8b5b/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/1f5d9e94-c649-45a6-bd31-6924dc2882c1/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '38adea3c4851f8793dab32288a74bd2f641f8c5cfbbe1fad4802b0e5b60c6311'
  checksumType  = 'sha256'
  checksum64    = 'e6bda14c1c819461226ff5691c0f6602ebf4131616bc925e771eff5dc8596a53'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








