$ErrorActionPreference = 'Stop';

$version = '126.0.2552.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/46501de1-d83f-4484-93ad-0c4c7625607b/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0185f7de-763e-4379-a2ca-b02f9d3f121a/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'B873273C5282C31DFFF96D7F584CBD362CF4A4D83EEA1EA8A46505F64B4274FA'
  checksumType  = 'sha256'
  checksum64    = '77DEBF4CDEBF979CD7A99C89FA937E759BB150707A8BF8565FDD6416C61F1AEA'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








