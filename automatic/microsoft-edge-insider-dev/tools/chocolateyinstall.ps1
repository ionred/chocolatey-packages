$ErrorActionPreference = 'Stop';

$version = '147.0.3901.1'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1e731ec2-a0fb-4f5b-a4c9-e3a5d86a4866/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/883db05a-3b77-4f38-8622-871ad9cb839e/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '1BBAC79C525DBD5E7465CFB4548EB9ED51FC526EF323EECBE1C8C32F4D1A3036'
  checksumType  = 'sha256'
  checksum64    = 'BA586CC2F333545FF8FAEB30815748374C88AEC1284D50254D2673746821E01D'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








