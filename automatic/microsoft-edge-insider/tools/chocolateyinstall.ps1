
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b68d7cdd-fdd5-44e2-8ed7-4249e1f12b3d/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e48d4bc9-09c8-4293-a105-63810ff91e46/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '9f774a7c3fd5a40b34b7b04adbabbe12b5ed0dccdae52f3dc6a345e178c7a01b'
  checksumType  = 'sha256'
  checksum64    = '4fd2485f41ab8be670733e1acf5f8748887c24c4b2b3fea0d73c0fabf6aa3d63'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








