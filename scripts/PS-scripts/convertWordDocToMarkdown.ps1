# $rootDir = "M:\Enterprise Integration\Event FW Phase II\Phase II Tasks - InProgress\How Tos\"
$files = Get-ChildItem . -Filter *.docx

foreach ($f in $files){
    # pandoc -s $f -t markdown --output=$f.md --extract-media=./images/$f -w gfm
	pandoc $f -t markdown --output=$f.md --extract-media=./images/$f
}
