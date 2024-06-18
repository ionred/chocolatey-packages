$ErrorActionPreference = 'Stop';

$version = '126.0.2592.61'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/9bdbd8e0-3b2f-49cf-89ac-d5a74a88bbc3/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/74368d5e-883c-4a89-8ad2-1b43022f9066/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'BD1E7E24CEF1E3AA53DCE9C6FEF6D0BECC14F2759FB54D6B2A54F88E073AD691'
  checksumType  = 'sha256'
  checksum64    = 'CAD194F27C24BE9F37DC75B8B967296EA86B1630B8B51D5CCEDB9C43991872B6'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








