# Hlasovy grill — spustenie lokalneho servera (mikrofon vyzaduje http://localhost)
$port = 8977
Start-Process "http://localhost:$port"
Set-Location $PSScriptRoot
py -m http.server $port
