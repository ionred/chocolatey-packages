$ErrorActionPreference = 'Stop';

$version = '150.0.4078.28'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/352d95b0-266c-47f2-b5e5-6c7753960067/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/e228b880-55cd-45ae-afb7-caf718251ef5/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'D772531D80BD349044C62E66F6227B92EF5FC2CA132485D65E5E98B5E305F0F8'
  checksumType  = 'sha256'
  checksum64    = '0BDB5A88D98335361BCA025C54D1A37CE75628E15CD4E1B8B6BF21596427FE6B'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








