# get markdown files
$files = Get-ChildItem . -Filter *.md

foreach ($f in $files){
    Get-Content -path $f | % { $_ -Replace './images','../images' } | % { $_ -Replace '{width=.+','' } | % { $_ -Replace 'height=.+','' } | Out-File $f'.txt'
    Copy-Item $f'.txt' -Destination $f
    Remove-Item $f'.txt'
}
