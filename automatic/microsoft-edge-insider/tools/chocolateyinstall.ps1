$ErrorActionPreference = 'Stop';

$version = '124.0.2478.67'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2a5ab0f8-0fb7-4c63-8b3f-27a829ccb52a/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4ee2ae1e-dd74-4f75-9a07-4dbf94fc9632/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6D2281428DFD3700DEE47D17B4B0DD1706D188070441E241097C58B0DFB93D45'
  checksumType  = 'sha256'
  checksum64    = '42EF4093ED2670DD02FF498DB330D769295B1703454C0A3CE608CC19769A0C4A'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








