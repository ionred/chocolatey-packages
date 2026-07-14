$ErrorActionPreference = 'Stop';

$version = '151.0.4129.21'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/48cced11-82ca-4eb8-8ad4-d0c93ec4e752/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6fd298e3-3360-4476-9bfd-20bcfa8aa028/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '094A78164ECE8FA066902941F040FDD7A7A3807E6CE9A172395D86ACBE6CDAD7'
  checksumType  = 'sha256'
  checksum64    = 'DF3E18E5E173BC3EE4259F418B42299E248921B9030ED7CE9941DD5EB6B13995'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








