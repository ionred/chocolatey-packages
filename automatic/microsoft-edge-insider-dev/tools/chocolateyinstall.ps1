$ErrorActionPreference = 'Stop';

$version = '147.0.3912.10'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'MSI'
  url32bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/4dbdc5c1-82ee-43fb-8d74-c04649cbcb8e/MicrosoftEdgeDevEnterpriseX86.msi'
  url64bit      = 'https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/3ad2b7b4-7376-4c43-93f5-73f27edb92ac/MicrosoftEdgeDevEnterpriseX64.msi'
  softwareName  = 'Microsoft Edge Dev'
  checksum32    = 'D3E09FCA2E6676B4EBCFEF4F8284651F4949640C815ABB4DABD81A2D1E384735'
  checksumType  = 'sha256'
  checksum64    = '1CDF5E15380510D836DD0721EAAF9D053656745222A28B1462B93C389F7F7223'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs










    








