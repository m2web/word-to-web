for file in *.md
do
    # echo $file
    if [[ $string = *" "* ]]; then #the filename contains a space
        mv "$file" "${file// /_}"
    fi
done