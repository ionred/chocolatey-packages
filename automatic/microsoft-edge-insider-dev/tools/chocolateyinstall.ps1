
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/39f510bd-7503-42cc-886a-eb0dae4a035d/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/16b418b7-0d62-49a0-b4ef-791bbbe37279/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'fb72bf56bb617a8bdce95f4a49035cae1a067aaf565d5f737ccb5b2cbbdf39f8'
  checksumType  = 'sha256'
  checksum64    = '9cb22d579ca4f55aee03ea3ec827eba4a023b50ff0e38a1481a4418194fdb8b1'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








