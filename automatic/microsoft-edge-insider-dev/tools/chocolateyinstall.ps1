
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/12f83465-ebf7-4764-b696-6dc11bed119d/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/76258f8e-1040-4ce6-b349-bad935c2dbfb/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '9f2b7c1384c46358d2162791a1dd9b6d9f4fdae2e08cfa04775227840d711a30'
  checksumType  = 'sha256'
  checksum64    = '61efa64c931ca48bf90c123caea34c1a2ec07809087cdcf0dea21a5bf0bc4a26'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








