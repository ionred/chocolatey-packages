
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/85e11944-9ee3-47b4-b3e2-3d16d52c01dd/MicrosoftEdgeDevEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6b010731-7127-41ac-9f09-df6140c10f89/MicrosoftEdgeDevEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Dev'

  checksum32      = '44e64b6179b27d47488ef8bea08ff4748ebf5bc92fd21130cb6290b785f01df5'
  checksumType  = 'sha256'
  checksum64    = 'c30199e4efcf386c1a104c4ae56f14a8a11ca14cecf2c7041f6c09f64be71fe2'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








