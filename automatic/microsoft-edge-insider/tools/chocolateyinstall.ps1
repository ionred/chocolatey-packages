
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cda1d223-c465-4ab5-8d8d-46dc57d0a46f/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7d292ba5-23bb-480e-9f98-b51a1ff1b921/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '6472b8376eef5fca5b8c04c15730ebdd05bf133d7887597ba904d76da3f2d6b5'
  checksumType  = 'sha256'
  checksum64    = '02d3f67732ad23dbe05c2a2d90694e792840b886f36cbd691ae38f696a51f618'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








