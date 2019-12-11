
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/fe4f1270-54f9-4831-b92f-467e3577eaa4/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/41c1d413-30cb-4947-9c63-5239f32021a7/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'ad4da7794802c24e617d73e28f07ace53fe70cdb73096a88471adcfaa744308c'
  checksumType  = 'sha256'
  checksum64    = 'eef58c22ec2dd9cb62f9515c66abca44ef3c61503c091c4705ad04f01cc61ff6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








