
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/55fd4987-af23-41ed-b1c9-79fa73009282/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/eff8b638-0686-4a69-a3c4-c1b6a1d655e7/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = 'b65036c9d802cbe0a5e688030db6f333ef3870a01d6b00759b045ffb0dae0f70'
  checksumType  = 'sha256'
  checksum64    = '7c005a2cef27a61e6eadd57f453c8dfcdce2eae2606aa6abec0e74cbdbd23daa'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








