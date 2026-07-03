$ErrorActionPreference = 'Stop';

$version = '150.0.4078.48'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4b2cb341-e66b-48dd-bebe-5423847a5c38/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1f94a3d3-215d-4158-9559-b91982dd5a26/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '8E0F0981F1FAA7D8AE7A145267BDE0B565B1430C49976759CD7D38920C07B0B0'
  checksumType  = 'sha256'
  checksum64    = 'FCE2F63AF6EEF877B608FF69239952F7C0C210DE2E0DB4AA1CD97553672302EB'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








