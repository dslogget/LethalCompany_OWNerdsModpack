$zipName = Split-Path -Path (Get-Location) -Leaf
$zipNameFinal = $($zipName + ".zip")
$thisFile = Split-Path -Path $PSCommandPath -Leaf
echo $zipName
echo $PSCommandPath
$items = Get-ChildItem -Exclude ".gitignore",$thisFile,$zipNameFinal
if (Test-Path $zipNameFinal) {
    Remove-Item $zipNameFinal -verbose
}
Compress-Archive $items $zipNameFinal