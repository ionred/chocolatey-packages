$ErrorActionPreference = 'Stop';

$version = '129.0.2779.0'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/45f39507-aef9-47b7-8615-30042f58427c/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/78ed0d7c-f10b-4c88-82d2-e682ba55474f/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = '042F17513273483E210354B99E292542A83793CBA3DD6CE8F509DAF801AF5568'
  checksumType  = 'sha256'
  checksum64    = 'F1135AD073E4DB5F0D1F71D755969BFC7D053FE994E47EA6EFE5C17EB5DC894E'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








