
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/14a710d4-7502-4c55-bd69-1763edcc4863/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/dde25617-fcf6-4c7d-a2f0-731af2e3d190/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '5bd07d428e50f929c19a59abfdedb9a3cb2ed0326a61c3c4085c40a5f8fc4448'
  checksumType  = 'sha256'
  checksum64    = 'f88e84052dfc5dd47aa149fb2f23720ca05c1769b82751ca40d4ac5433a3dc6d'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








