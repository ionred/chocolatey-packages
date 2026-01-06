$ErrorActionPreference = 'Stop';

$version = '144.0.3719.59'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/deec0d38-e0b0-49ed-b4a2-33c4ccb415eb/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/ddfc013d-d9a3-4765-a660-f754a85c8800/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '6E25E05734178B50ECECE92D23B9E61346F8EECD343ADEA858A90674E1BBD36B'
  checksumType  = 'sha256'
  checksum64    = 'F2F382605E4903D6A3DF2C65043FEC0FB8FA439DE1EA4E9F64CB4B870F5CE342'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








