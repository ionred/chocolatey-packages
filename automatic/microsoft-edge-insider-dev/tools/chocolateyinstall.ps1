
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/88ae9ccc-ea5a-4ead-98a0-c54c5bf3aad2/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/0410618e-58d4-4ece-9a07-fa3a9b1ac2a9/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'a7a2094ef0df0ba674b63b45e2d7bf7efb5031c1ea4205a5988077d75af697b2'
  checksumType  = 'sha256'
  checksum64    = 'f2c21dd562d24528a4785d9f454746d08bef38bc8aa9ef3f98cad2a5e7a59a5c'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








