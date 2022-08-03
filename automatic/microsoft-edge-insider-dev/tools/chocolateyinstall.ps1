
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/5feaac08-2a21-453c-825c-3aa77a0e12e1/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9db944bf-6a95-4896-880b-0056940abad2/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '67991cf3be2ade77f7981e8f58c12a531dbfa3b245a8051936ca1eb12f37569d'
  checksumType  = 'sha256'
  checksum64    = 'd91b533d7cbf4c5e92fa9b35b7c4ba6dc8854ce9114988dcbd6ff0cfd85720fa'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








