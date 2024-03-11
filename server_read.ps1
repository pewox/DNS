$path = '.\server.csv'
$csv = Import-Csv -Path  $path
$path_check = Test-Path -Path $path
$csv_check = -not [string]::IsNullOrEmpty((Get-Content -Path $path))
$lines = [int](Get-Content -Path $path | Measure-Object -Line).Lines

for($i = 0; $i -lt $lines; $i++){
    Write-Host $csv.old[$i]
}

$path_check
$csv_check