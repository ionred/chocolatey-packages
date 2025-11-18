$ErrorActionPreference = 'Stop';

$version = '143.0.3650.28'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/d9f5c316-d324-4caf-a061-95861446d4a8/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/20ef9ed7-4ce5-415e-95b9-7f4acae06bb3/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '374990DBBC4B732E9D5582FCFD468E9E938CDEA6BBE3697E41AC6D5E32ADB8DC'
  checksumType  = 'sha256'
  checksum64    = 'BE5C8D5AC55555B7029CD3F9081085F560E573603935602823BFBB046773AE91'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








