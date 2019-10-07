
$ErrorActionPreference = 'Stop';
$url32        = 'https://go.microsoft.com/fwlink/?linkid=2093377'
$url64      = 'https://go.microsoft.com/fwlink/?linkid=2093376'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32      = 'c859f36db536ed2f0361b3bbaa605a215cde96caba4037f03d005dacbf13222a'
  checksumType  = 'sha256'
  checksum64    = '053975938a4bdb65b359f5480a94b64a036a99342009790c6571fd061c518e6a'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








