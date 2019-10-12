import-module au
$versions = 'https://32767.ga/edge/msedge-stable-win-arm64.json'
$downloads = 'https://www.microsoftedgeinsider.com/en-us/enterprise'

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
    
    
    $version_page = Invoke-WebRequest -Uri $versions -UseBasicParsing
    #tidy-5.1.25-win64.zip
    #$re  = "tidy-.+-win(32|64).zip"
    $version = ($version_page.Content -replace '\[\"', '[{"ver":"' -replace ',"', '}, {"ver":"' -replace ']', '}]' | ConvertFrom-Json) |Sort-Object -desc -Property { [version]$_.ver } | Select-Object -first 1 -ExpandProperty ver
    if ($version.Substring(0,8) -eq '78.0.276') {
        $a = [version]$version
        $b = [string]$a.Revision
        $version = "$($a.Major).$($a.Minor).$($a.Build).$($b.PadRight(10,'0'))"
    }
    $download_page = Invoke-WebRequest -Uri $downloads 
    $url32 = ($download_page.AllElements | Where-Object data-download-enterpriseid -match "Beta32MSI" |Select-Object -first 1 -ExpandProperty data-download-url)
    $url64 = ($download_page.AllElements | Where-Object data-download-enterpriseid -match "Beta64MSI" |Select-Object -first 1 -ExpandProperty data-download-url)
    
    #$version = $url -replace '.exe', '' -split '_' | Select-Object -Last 1
    #$url32 = 'https://github.com' + $url[0]
    #$url64 = 'https://github.com' + $url[1]

    $Latest = @{URL32 = $url32; URL64 = $url64; Version = $version; }
    return $Latest
}
update
