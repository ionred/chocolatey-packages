$ErrorActionPreference = 'Stop';

$version = '157.0.4341.16'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/7b19e5a5-2c08-4ae3-8d9b-9cbec7e3bff0/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f1263db5-96ee-4a6c-b880-f1c8f0028e13/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '01FE9848E64A6D4AE70315178C40F5FC65A0819D814EE4FB7FFA9614C892EF14'
  checksumType  = 'sha256'
  checksum64    = 'EE670330A6D6ACCCE6437C96DC4F2FD14C4DC5B140541D7DCA61CFDD4BB1BEE6'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








