import-module au
$versionpage1 = 'https://edgeupdates.microsoft.com/api/products'
$branch = 'Beta'

function global:au_SearchReplace {
  @{
    ".\tools\chocolateyInstall.ps1" = @{
      "(?i)(^\s*url32bit\s*=\s*)('.*')" = "`$1'$($Latest.URL32)'"
      "(?i)(^\s*url64bit\s*=\s*)('.*')" = "`$1'$($Latest.URL64)'"
      "(?i)(^\s*checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
      "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
      "(?i)(^[$]version\s*=\s*)('.*')" = "`$1'$($Latest.RemoteVersion)'"
    }
  }
}

function global:au_GetLatest {
    $version_page_data = (Invoke-WebRequest -Uri $versionpage1).Content | ConvertFrom-Json
    $releases = $version_page_data | Where-Object -Property Product -eq $branch | Select-Object Releases
    $version = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x64'}).ProductVersion
    $URL32 = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x86'}).Artifacts.Location
    $URL64 = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x64'}).Artifacts.Location  
    $Checksum64 = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x64'}).Artifacts.Hash
    $Checksum32 = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x86'}).Artifacts.Hash
    
    @{
      URL32 = $url32; 
      URL64 = $url64; 
	  Checksum32 = $Checksum32;
	  Checksum64 = $Checksum64;
      Version = $version; 
      RemoteVersion = $version;
     }
}

write-host 'end'
update -ChecksumFor none