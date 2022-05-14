for file in *; do
    if [[ $file = *" "* ]]; then #the filename contains a space
        # echo $file
        # update the filename with an underscore instead of a space
        mv "$file" "${file// /_}"
    fi
done