
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/8a0547a2-8f32-4c8f-8e14-8fb7b4799f2a/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/8009b21f-63c2-4761-9cf1-6ecfba918fe3/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '84788a18d032e493da1ef760e29943ada0ab7b31f8a7aff754f70e2ed359cfb6'
  checksumType  = 'sha256'
  checksum64    = '8567ca9c3213c5cf5bb3791fb43eea0da4c766db9bdfe389602fbcde44a28711'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








