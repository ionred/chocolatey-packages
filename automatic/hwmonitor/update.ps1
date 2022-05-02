import-module au

$releases = 'https://www.cpuid.com/softwares/hwmonitor.html'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            #"(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]url\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(?i)(^\s*checksum\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            #"(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
     }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    #tidy-5.1.25-win64.zip
    #$re  = "tidy-.+-win(32|64).zip"
    $url = (($download_page.links | Where-Object href -match "/downloads/.*.exe$" | Select-Object -first 1 -expand href) | ForEach-Object { $_ -replace 'http://www.cpuid.com/downloads', '' -replace '/downloads', '' } | ForEach-Object { "http://download.cpuid.com$_"})

    $version = $url -replace '.exe', '' -split '_' | Select-Object -Last 1
    #$url32 = 'https://github.com' + $url[0]
    #$url64 = 'https://github.com' + $url[1]

    $Latest = @{ URL32 = $url; Version = $version }
    return $Latest
}

update
