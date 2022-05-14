# loop through each markdown file in the dir
for file in *; do
    if [ "${file: -3}" == ".md" ] 
    then
        echo $file;
        # change image folder path to the parent dir
        sed -i 's/.image/..image/' $file
        
        # remove the image width and height settings created by pandoc
        sed -i 's/width=.+//' $file
        sed -i 's/height=.+//' $file
    fi
done;

