
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/a4b1bc92-f9ca-4083-97d8-cb87f85c59a2/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/3e534425-2c76-4e03-a636-961567b2dc26/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'a523ba0bcde4ec95e48d069e1ac0bafbc5fda995dd7926366bdb3b849845dbe7'
  checksumType  = 'sha256'
  checksum64    = '1da111e80da9353f152ddc80a87581c43e452de5b9237a53d828dd76eedaf639'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








