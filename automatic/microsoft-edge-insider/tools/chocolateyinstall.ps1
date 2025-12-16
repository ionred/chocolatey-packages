$ErrorActionPreference = 'Stop';

$version = '144.0.3719.18'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/69f57f5d-10cb-4aed-b236-043ccd413d51/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1832927f-bdac-4e08-ab48-68e257c31519/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '5473C49433D56A3BB01726E458B1C1781E1FDA093111FD37C40738F23DD7FC84'
  checksumType  = 'sha256'
  checksum64    = 'F6E95EC55CF485C53DE99AE7DC18766BC4BC734FD9573A22B956BBDC6839D441'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








