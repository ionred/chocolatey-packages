$ErrorActionPreference = 'Stop';

$version = '132.0.2957.11'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/1fdcdd62-c457-4ee5-81ed-9357abdac567/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4b07313e-c794-4acb-8e83-458366219ace/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = 'CADD06758AA41F491EA92B4B2271D589BB8D783C25884C60FF2984DB0C8B271F'
  checksumType  = 'sha256'
  checksum64    = '844E8FDA4F498C3CCD90F0149ECA289D935F1604E62B7AD944AED5FDC33FE516'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








