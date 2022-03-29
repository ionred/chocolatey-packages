
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/aea3dc13-6367-47ce-bc15-d2999a576099/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/40688b48-bce1-4db2-a22b-9ce1ab71cb3c/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = 'e9c6d9c1b6f741a98b6c8da87e2e5a723dc6013b4b0aeec99f009a27e31fb5ae'
  checksumType  = 'sha256'
  checksum64    = '5f1ee4fee374150baa88b970fccf1aefb17ee7f9debd0eeed46f42ed02fc3940'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








