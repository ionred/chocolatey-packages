$ErrorActionPreference = 'Stop';

$version = '148.0.3967.20'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/2703d943-e37a-4610-ba53-03308a6c0e03/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/15a76a8d-5439-44f1-8077-34f3806d7588/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '1721BE89FDBE9B5FE64BF3A46FEFA7F9E4CA29A627BCE2F666CBD342E223853A'
  checksumType  = 'sha256'
  checksum64    = '1D3A129328528DD01292B7A26584E7495A8AAF4C54A80355EEBDBD0D00DF8522'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








