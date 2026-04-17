$ErrorActionPreference = 'Stop';

$version = '148.0.3967.12'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ffe9c990-0ec0-45b3-9a18-a4c41bc36a14/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/432e4b1e-f6a7-4658-8b4e-6eccbf916e9f/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'B9EBEA6E58C3E174F8BF7FA1A764D5DCA52C350F38A9C2F4F443FE7539CD060A'
  checksumType  = 'sha256'
  checksum64    = '6FF740B36DA9A59C7E34B9CA29667E6D468D489196725CCF150FA7F2010993AD'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








