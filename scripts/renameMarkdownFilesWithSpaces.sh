for file in *.md
do
    echo $file
    
    mv "$file" "${file// /_}"
done