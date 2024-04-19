$ErrorActionPreference = 'Stop';

$version = '124.0.2478.51'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b50e45fb-f58a-4ac4-a39f-f3d42c3efeff/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c37b2e87-5132-478b-ae68-212a02a05eb5/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '9027C80028F31A72A2215484D1992C4C0546EC21A692E6D134FD89382FFDACA7'
  checksumType  = 'sha256'
  checksum64    = 'DE94D24D81E719675A8B625031C27870EB90C7E70A8F9BEC54158FF4EE727A53'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








