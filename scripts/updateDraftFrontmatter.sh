for file in *.md
do
    echo $file
    sed -i -e 's/draft: true/draft: false/g' $file
done