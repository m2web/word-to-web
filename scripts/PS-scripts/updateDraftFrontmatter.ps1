# get markdown files
$files = Get-ChildItem . -Filter *.md

foreach ($f in $files){
    Get-Content -path $f | % { $_ -Replace 'draft: true','draft: false' } | Out-File $f'.txt'
    Copy-Item $f'.txt' -Destination $f
    Remove-Item $f'.txt'
}
