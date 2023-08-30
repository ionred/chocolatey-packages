
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6a156007-b027-4e09-8be8-5a6cf63869f9/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fe7e7e10-fa7b-449b-ac19-d70a8916a249/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '02627b8ea530fa307ac9ae89ba86063510d56554ccd7dbe0a95e6256faa5faa0'
  checksumType  = 'sha256'
  checksum64    = 'fa76d3832d7395af45f0b4d1e0c600ed91878da5d00eea9c3151d10386a51f62'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








