
$ErrorActionPreference = 'Stop';
$url32        = 'https://go.microsoft.com/fwlink/?linkid=2093377'
$url64      = 'https://go.microsoft.com/fwlink/?linkid=2093376'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32      = 'b7763e0a323ee0405121a1265dcd4c3840fdea52293fa7c5e8e16532eed76850'
  checksumType  = 'sha256'
  checksum64    = '68325d9c361f2717bf786c1eea57f0a1d9a5df68474411343a2948df14df6f54'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








