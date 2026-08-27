$ErrorActionPreference = 'Stop';

$version = '152.0.4191.51'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/af03a95d-ace3-4b2f-945f-3d647bba4081/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b0ef5c9e-0e2c-4f94-a508-e646bcbd3410/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'FB9A9679E8E033731558F84FB49EA1A089C5B002CC3F4D077D3535ABBE9572D9'
  checksumType  = 'sha256'
  checksum64    = 'C8CF7F57A779D4301194FC71D66E48BBEDD1CA07999CC66C25D350C3436F115F'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








