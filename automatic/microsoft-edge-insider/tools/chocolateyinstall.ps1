
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/fbec39cb-9f2f-41b3-86f8-8e597e06c736/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9bb8b37a-a594-4d57-917f-3dc6590234da/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '76be071c506bb115d00dfbeb6a1cb3b48d9017ad1da8596fd3cc0d1a6a31cda6'
  checksumType  = 'sha256'
  checksum64    = '3b14827781ec383a6d06d5f83ebbc052c0e12f0c622d143c6539cdd0425f42cd'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








