$ErrorActionPreference = 'Stop';

$version = '148.0.3967.12'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9feeb888-052e-4d10-b870-95ba6f46bdee/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/8c69adfa-3b52-4960-b3ff-73998294f386/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '99037EC6FA1CA8335B30BA18E51EBE0D237294F85F3243DAF20C1BD83EE2AAB9'
  checksumType  = 'sha256'
  checksum64    = '77BAEA6B02C76F481E29EA0C37508A1716E1088C7B668ACBEDF4192C891C85D5'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








