# loop through each markdown file in the dir

for file in *; do
#if word doc has a three letter extension, then it is a docx file and needs to be renamed
#so pandoc will convert it to markdown
    if [ "${file: -4}" == ".doc" ]
    then
        #rename word doc to docx
        mv -v "$file" "${file%.doc}.docx"
    fi
done

for file in *; do
    if [ "${file: -5}" == ".docx" ]
    then
        # use pandoc to convert the doc to markdown
        echo $file
        pandoc $file -t markdown --output=$file.md --extract-media=./images/$file
    fi
done;

