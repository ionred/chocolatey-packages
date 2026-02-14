$ErrorActionPreference = 'Stop';

$version = '145.0.3800.58'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b40319ea-d2a3-43ef-9b4d-a46c66e55a6f/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/f00e7052-2d06-45a2-b055-f19ee354fa99/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '0E4A454070716CEB3540268E61FCA95ADCA10B648BDBD6B197B1D25D4D93D8D5'
  checksumType  = 'sha256'
  checksum64    = '95CEC0D0BC2C552CC722E5C46D98FD5697C443BA80415A91D0E3B57674EFD1F8'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








