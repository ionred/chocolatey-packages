
$ErrorActionPreference = 'Stop';
$url32        = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/0ef5929b-66c4-48e4-958f-596373f53381/MicrosoftEdgeBetaEnterpriseX86.msi'
$url64      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/6df58dc5-0134-4fb6-8659-b1b2b3412454/MicrosoftEdgeBetaEnterpriseX64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url           = $url32
  url64bit      = $url64

  softwareName  = 'Microsoft Edge Beta'

  checksum32    = '95def17a4aad81e9dd8d09f4173b99fac172251c93a6b3ef1c639d8fa8e53c64'
  checksumType  = 'sha256'
  checksum64    = 'f72c4b89157fbe5d4bbe4e1d4af63a09320d2fd541c08ec1a32db4e8200ca6d7'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








