
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9137a307-0845-41d4-ac47-1a464cf8d7b0/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/87dedb75-516b-474a-967c-f60e24ae3e1e/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'd3ecd32111c02b371a103c3334982ddef7e3e16ee70f024379afbc4e5d3174c2'
  checksumType  = 'sha256'
  checksum64    = '7e1d4f28eb0eb05f29d1e80a2e221092fb623db7fc9780d6e1ef352b16fc5d5c'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








