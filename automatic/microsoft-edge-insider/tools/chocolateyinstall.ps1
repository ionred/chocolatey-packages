
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1eb45b8d-c92b-49a5-ab9c-a4e6bf8316b4/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/10d2884a-a45a-4b6d-9bcb-074281beddba/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '5215c0dcd18e0283fe70ee57e78fe451c46ddec71a13d3c833610061426f7208'
  checksumType  = 'sha256'
  checksum64    = 'fe429b6aafa1bb7f38f010b5a6b609f3a6602dfea50f1ffa76f08f82a7c4dbc6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








