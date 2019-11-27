
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/c84405bd-8bf9-4049-8831-143c8ce88c5a/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/d9951383-3e8c-4362-a8d6-fcc6c2aef2d3/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'bde570a0668a41ee6b191f753b9559caf2e0604b8fbc42c199b2feec24556027'
  checksumType  = 'sha256'
  checksum64    = '9ba25c42c07b17469ee1f856b0a6f4ecbb382a8c0fd336702b012fed12de46e6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








