
$ErrorActionPreference = 'Stop';
$url32        = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/d2d82cf8-6543-4d3d-a7ae-0b5d45aa3809/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'http://dl.delivery.mp.microsoft.com/filestreamingservice/files/8e85aef3-387f-4c6b-94a4-4bebd7be9f65/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '9b571e8e45ac9a13572cb36d41538ed0e55bdc60d0fb1a37dda14977d8c36798'
  checksumType  = 'sha256'
  checksum64    = '0b2ba8cad58eea0fdb6af6b8bd984b858ed84c3b8713a87a0b684b0949ebf8d6'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








