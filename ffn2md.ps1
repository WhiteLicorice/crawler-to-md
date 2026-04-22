# ffn2md.ps1
$venvPath = ".\.venv"
$cookiesFile = "cookies.json"
$targetUrl = "https://www.fanfiction.net/"
$outputFolder = ".\markdown"
$cacheFolder = ".\cache"
$baseUrl = "https://www.fanfiction.net"
$includePattern = "fanfiction.net"      # broader match
$rateLimit = 30
$delay = 1

Set-Location $PSScriptRoot
& "$venvPath\Scripts\Activate.ps1"

python -m crawler_to_md.cli `
    --url $targetUrl `
    --cookies $cookiesFile `
    --output-folder $outputFolder `
    --cache-folder $cacheFolder `
    --base-url $baseUrl `
    --include-url $includePattern `
    --rate-limit $rateLimit `
    --delay $delay

deactivate