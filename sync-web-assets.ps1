$WebRoot = Split-Path $PSScriptRoot -Parent
$WwwDest = Join-Path $PSScriptRoot "app\src\main\assets\www"

if (Test-Path $WwwDest) { Remove-Item $WwwDest -Recurse -Force }
New-Item -ItemType Directory -Path $WwwDest -Force | Out-Null

@("index.html", "manifest.json", "sw.js") | ForEach-Object {
    Copy-Item (Join-Path $WebRoot $_) $WwwDest -Force
}
@("css", "js", "libs", "assets") | ForEach-Object {
    Copy-Item (Join-Path $WebRoot $_) (Join-Path $WwwDest $_) -Recurse -Force
}

# Exclude large 6.7MB printables PDF from APK bundle to keep APK lightweight
Remove-Item (Join-Path $WwwDest "assets\Heritage_Museum_Kit_Printables.pdf") -ErrorAction SilentlyContinue

$count = (Get-ChildItem $WwwDest -Recurse -File).Count
Write-Host "Synced $count offline app files into Android APK bundle: $WwwDest" -ForegroundColor Green
