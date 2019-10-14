import-module au
$module_name32 = 'msedge-beta-win-x86'
$module_name64 = 'msedge-beta-win-x64'
$versionpage1 = 'https://msedge.api.cdp.microsoft.com/api/v1/contents/Browser/namespaces/Default/names/'
$versionpage2 = '/versions/latest?action=select'
$downloads1 = 'https://msedge.api.cdp.microsoft.com/api/v1/contents/Browser/namespaces/Default/names/'
$downloads2 = '/versions/'
$downloads3 = '/files?action=GenerateDownloadInfo'
$dlparams = @{'action'='GenerateDownloadInfo'} | ConvertTo-xml
$params = '{"targetingAttributes": {}}'

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
  
    $version_real=(Invoke-WebRequest "$($versionpage1)$($module_name32)$($versionpage2)" -Method POST -ContentType 'application/json' -Body $params | ConvertFrom-Json).ContentID.Version

    if ($version_real.Substring(0,8) -eq '78.0.276') {
        $a = [version]$version_real
        $b = [string]$a.Revision
        $c = [int32]$b.PadRight(10,'0')
        $version = "$($a.Major).$($a.Minor).$($a.Build).$($c)"
    } else {
        $version = $version_real
    }


    $download32 = "$($downloads1)$($module_name32)$($downloads2)$($version_real)$($downloads3)"
    $download64 = "$($downloads1)$($module_name64)$($downloads2)$($version_real)$($downloads3)"

    $headers = @{}
    $headers["content-type"] = "application/json"


    $url_32 = ((Invoke-WebRequest -Uri $download32 -Method 'POST' -Body $dlparams -Headers $headers -ContentType 'application/x-www-form-urlencoded').Content | ConvertFrom-Json).url | Select-Object -first 1
    $url_64 = ((Invoke-WebRequest -Uri $download64 -Method 'POST' -Body $dlparams -Headers $headers -ContentType 'application/x-www-form-urlencoded').Content | ConvertFrom-Json).url | Select-Object -first 1

    #$url64 = ((Invoke-WebRequest -Uri $download64 -Method 'POST' -Body { action:'GenerateDownloadInfo' } -Headers $headers -ContentType 'application/x-www-form-urlencoded').Content | convertfrom-json).url | Select-Object -first 1
  
    $Latest = @{URL32 = $url_32; URL64 = $url_64; Version = $version; }
    return $Latest
}
write-host 'end'
#global:au_GetLatest
#$Latest
update