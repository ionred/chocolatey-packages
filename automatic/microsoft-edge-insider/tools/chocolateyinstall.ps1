
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/b16b768d-23e9-4723-8efd-6add948fffcb/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/cec43129-78e0-4e6a-b0c5-edeff98dea55/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '411cbf1cf5790cf3399aeb570bedff9e489dda53bedfb6642745743de942dfe1'
  checksumType  = 'sha256'
  checksum64    = '512e9a5357fb3dd4ee1cf363f7446b991fbf0e78e0e5c36d9e4e088a72f08aee'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








