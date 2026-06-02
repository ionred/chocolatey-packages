$ErrorActionPreference = 'Stop';

$version = '149.0.4022.45'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/c9091d16-df29-457d-b5b4-b710cf98e8a2/MicrosoftEdgeBetaEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/74954ad4-d192-45d6-a5ab-5ab0f3bb7d01/MicrosoftEdgeBetaEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Beta'
  checksum32    = '2429BF55FC797F746EABE5FE7C0CB154A24309FD5A624D6BBD835D591BFC088C'
  checksumType  = 'sha256'
  checksum64    = 'EA5E64F0028C44DB4CC971F401A44BD76F140A2F6A17F099B7E91D66B6B646DA'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








