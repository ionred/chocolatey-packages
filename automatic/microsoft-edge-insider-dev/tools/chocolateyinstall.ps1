$ErrorActionPreference = 'Stop';

$version = '131.0.2863.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c60b8bc6-1ed0-4c59-b532-188026402c31/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e0c5b9b2-418c-4894-a122-a249b025b44b/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '31043B0FFD85DA11EC850A741B42A4A43B5AB6AFE624FE1EB1DCAFDD16458400'
  checksumType  = 'sha256'
  checksum64    = '5188DA60F89AAA99CBB9D7A2F82427CDFD98045ABEC898DBCF06315AC89E94CB'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








