import-module au
$versionpage1 = 'https://edgeupdates.microsoft.com/api/products'
$branch = 'Beta'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(?i)(^\s*checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
     }
}

function global:au_GetLatest {
    $version_page_data = (Invoke-WebRequest -Uri $versionpage1).Content | ConvertFrom-Json
    $releases = $version_page_data | Where-Object -Property Product -eq $branch | Select-Object Releases
    $version = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x64'}).ProductVersion
    $url32 = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x86'}).Artifacts.Location
    $url64 = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x64'}).Artifacts.Location  
    $Checksum64 = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x64'}).Artifacts.Hash
    $Checksum32 = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x86'}).Artifacts.Hash
    $Latest = @{URL32 = $url32; URL64 = $url64; Version = $version; Checksum32 = $Checksum32; Checksum64 = $Checksum64 }
    return $Latest
}
write-host 'end'
update