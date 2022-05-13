# TODO: loop through each markdown file in the dir
for file in *; do
    if [ "${file: -3}" == ".md" ] 
    then
        echo $file;
        sed -i 's/.image/..image/' $file
        sed -i 's/width=.+//' $file
        sed -i 's/height=.+//' $file
    fi
done;

