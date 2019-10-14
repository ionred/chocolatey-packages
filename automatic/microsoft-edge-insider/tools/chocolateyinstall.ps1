
$ErrorActionPreference = 'Stop';
$url32        = 'http://msedge.f.tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/c0b0e6b3-2799-4eee-90a2-eaaab0857a3a?P1=1571167556&P2=402&P3=2&P4=FKhqp8SdWrPyxqVeOXC%2fChMUrsFahatck2c9kgqtXKqRCJVpsTHOy4zTBGW0hUc97Cx8ayyPezbDOHQRg%2b8bSQ%3d%3d'
$url64      = 'http://msedge.f.tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/5c1c700a-f349-4d76-bacb-68a100176c7e?P1=1571167556&P2=402&P3=2&P4=Q6SiYJrqQojipgo4GqylYHz3ZWxzvvEpTn32sYDovnH5fFYW57PeOwuUHvDVTGn8seA6v1%2b0OKKEfx1JaWZRcg%3d%3d'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '71912e5686f5d1354ab6cbeefb52b05aaea084da3d44fd905b45fb05a0de7051'
  checksumType  = 'sha256'
  checksum64    = '3b879c4d83016f1f79d24a05fef1ed42fdb86dbe7e1b71556be3414b74a579d8'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








