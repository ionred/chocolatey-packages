$packageName = 'fritzing'
$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url = 'https://fritzing.org/download/0.9.3b/windows/fritzing.0.9.3b.32.pc.zip'
$checksum = 'B3E5694147C1E7D86CEB29F40FF17A0704340BE165F102A3E24525FCD9A5934D'
$checksumType = 'sha256'
$url64 = 'https://fritzing.org/download/0.9.3b/windows-64bit/fritzing.0.9.3b.64.pc.zip'
$checksum64 = '9C49FBF30CA1C14838E529CD8198E1CDE8588FB06EED45841406D6421AC088DA'
$checksumType64 = 'sha256'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"