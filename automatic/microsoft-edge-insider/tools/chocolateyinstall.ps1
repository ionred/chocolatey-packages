$ErrorActionPreference = 'Stop';

$version = '127.0.2651.61'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/de793702-0b6e-422f-83e0-c85cc89c5354/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1d326738-9277-4dd3-b966-11cf496814d9/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '2BEAA1A308D38FD4BA77CCB1249CAF9C014B17A0AD3920ED607835C7AB6E82DE'
  checksumType  = 'sha256'
  checksum64    = '1B7349DAC8C119413C81310630B54D4513A23827F893FA24BB48A0CD98703416'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








