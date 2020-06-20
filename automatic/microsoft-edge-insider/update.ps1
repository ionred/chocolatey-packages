import-module au
#$module_name = 'msedge-beta-win-x64'
#$download_module_name32 = 'Beta32MSI'
#$download_module_name64 = 'Beta64MSI'
$versionpage1 = 'https://edgeupdates.microsoft.com/api/products'
#$versionpage2 = '/versions/latest?action=select'
#$downloads = 'https://www.microsoftedgeinsider.com/en-us/enterprise'
#$params = '{"targetingAttributes": {}}'

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
    #$version=(Invoke-WebRequest "$($versionpage1)$($module_name)$($versionpage2)" -Method POST -ContentType 'application/json' -Body $params | ConvertFrom-Json).ContentID.Version
    $releases = $version_page_data | Where-Object -Property Product -eq Beta | Select-Object Releases
    $version = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x64'}).ProductVersion
    #$download_page = Invoke-WebRequest -Uri $downloads 
    #$url_32 = ($download_page.AllElements | Where-Object data-download-enterpriseid -match $download_module_name32 |Select-Object -first 1 -ExpandProperty data-download-url)
    #$url_64 = ($download_page.AllElements | Where-Object data-download-enterpriseid -match $download_module_name64 |Select-Object -first 1 -ExpandProperty data-download-url)
    $url32 = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x86'}).Artifacts.Location
    $url64 = ($releases.Releases | Where-Object {$_.Platform -eq 'Windows'} | Where-Object {$_.Architecture -eq 'x64'}).Artifacts.Location
    
    $Latest = @{URL32 = $url32; URL64 = $url64; Version = $version; }
    return $Latest
}
write-host 'end'
update