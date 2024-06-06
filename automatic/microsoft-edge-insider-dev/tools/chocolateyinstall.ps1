$ErrorActionPreference = 'Stop';

$version = '127.0.2620.3'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/39399c52-ccd9-4549-a15c-97ea029f7c35/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3c09fc90-09a1-4c4c-950a-e0e0951c3cc9/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'D8F2B0DB2408E7F55F44CB7A016174B37C9E8DB67DEAC364146C5F56F76FE3A9'
  checksumType  = 'sha256'
  checksum64    = 'C941202D33CFA65C19B62DB266982424D138F09DDD3DFCE707F0D5357C95D739'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








